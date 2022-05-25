# 读取文件夹文件
from telnetlib import PRAGMA_HEARTBEAT
import jieba
import os
import time
import math
import re

#获取
def get_tf(words):
    tf_dic = {}
    for w in words:
        tf_dic[w] = tf_dic.get(w, 0) + 1
    return tf_dic.items()

#去除原始文本中的停用词
def clear(text):
    clchar = u'[a-zA-Z0-9’#$%&\'()*+-/:：,，;<=>@★、【】《》‘’[\\]^_`{|}~①④—]'
    text = re.sub(clchar, '', text)
    text = text.replace("\n", '')
    text = text.replace(" ", '')
    return text

#开始
if __name__ == '__main__':
    before = time.time()

f = open("haruki murakami.txt", 'r', encoding='utf8')
corpus = f.read()       #读取文件得到语料库文本
corpus = clear(corpus)  #去除原始文本中的停用词
split_words = [x for x in jieba.cut(corpus)]  # 利用jieba分词
words_len = len(split_words)
#print(split_words)
place = [i for i, v in enumerate(split_words) if v == '多少']#提取文本中“多少”的句子


result_ = []
for i in place:
    left = right = i
    while split_words[left] not in ['.','。','?','？','!','！','…','\"','“','”']:#and (i-left<10):
        left-=1
    while split_words[right] not in ['.','。','?','？','!','！','…','\"','”','“']:#and (right-i<10):
        right+=1
    
    result_.append(split_words[left+1:right])

#print(result)

f = open("places.txt",'w',encoding='utf-8')
for i in place:
    ts = str()
    left = right = i
    while split_words[left] not in ['.','。','?','？','!','！','…','\"','“','”']:
        left-=1
    while split_words[right] not in ['.','。','?','？','!','！','…','\"','”','“']:
        right+=1
    for k in split_words[left+1:right+1]:
        ts+=k
    ts+='\n'
    f.write(ts)
f.close()

nmeans = 3#多少种意思
temp_count = [int(i-i) for i in range(nmeans)]

f = open('多少.txt','r',encoding='utf-8')
wordTypes_ = [x[:-1] for x in f.readlines()]



wordTypes = wordTypes_
result = result_



#print(wordTypes)
for i in wordTypes:
    if int(i)==1:
        temp_count[0]+=1
    elif int(i)==2:
        temp_count[1]+=1
    elif int(i)==3:
        temp_count[2]+=1
    else:
        pass

psi=[]
for i in range(nmeans):
    psi.append(temp_count[i]/(temp_count[1]+temp_count[2]+temp_count[0]))

def dic_(lis,dic):
    for i in lis:
        if i not in dic:
            dic[i] = 1
        else:
            dic[i] += 1

def dic_not(lis,dic):
    for i in lis:
        if i not in dic:
            dic[i] = 0
        else:
            dic[i] += 0

def add_dict(dic_num, word):
    if word not in dicA:
        dicA[word] = dicB[word] = dicC[word] = 0

    if dic_num == 1:
        dicA[word] += 1
    elif dic_num == 2:
        dicB[word] += 1
    elif dic_num == 3:
        dicC[word] += 1
    else:
        pass

#print(result)
dicA = {}
dicB = {}
dicC = {}
for number,j in zip(wordTypes,range(len(wordTypes))):
    for word in result[j]:
        add_dict(int(number), word)

#print('\n',dicA['了'])
#print('\n',dicB['了'])
#print('\n',dicC['了'])
#print('\n',temp_count)

for i in dicA.keys():
    dicA[i] = math.log((dicA[i]+1)/(temp_count[0]))
for i in dicB.keys():
    dicB[i] = math.log((dicB[i]+1)/(temp_count[1]))
for i in dicC.keys():
    dicC[i] = math.log((dicC[i]+1)/(temp_count[2]))


#test = ["你对于羊知道多少呢？"]

def res(test):
    l_test = jieba.lcut(test)
    a=math.log(psi[0])
    b=math.log(psi[1])
    c=math.log(psi[2])
    for i in l_test:
        if i in dicA:
            a+=dicA[i]
            #print(i,dicA[i])
            b+=dicB[i]
            #print(dicB[i])
            c+=dicC[i]
            #print(dicC[i])
        else:
            #print('\n',i,'not in dict')
            pass
    #print('\na=',a,'\nb=',b,'\nc=',c)
    if(a>b and a>c):
        return('1')
    elif(b>a and b>c):
        return('2')
    elif(c>a and c>b):
        return('3')
    else:
        pass

t = ['说多少遍你才能明白！','再前一天的事也多少记得。','你也多少开窍了嘛！']
"""t = []
for i in result[-5:]:
    n = str()
    for j in i:
        n+=str(j)
    t.append(n)"""
for i in t:
    print('\n',i,'\n\"多少\"在本句话中是第',res(i),'种意思')

