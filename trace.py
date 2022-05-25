import pandas as pd
import statsmodels.api as sm
import numpy as np


###一.指标计算###
ni = pd.read_excel('测试样本.xlsx',sheet_name="净利润NI")
ni = ni.set_index('code')
date = ni.columns
nig = pd.DataFrame()
for i in range(4,len(date)):
    nig[date[i]] = (ni[date[i]]-ni[date[i-4]])/abs(ni[date[i-4]])
nig = nig.reset_index()
nig = pd.melt(nig,id_vars=['code'],value_vars=nig.columns[1:],var_name='date',value_name='increase')

###二.样本筛选###
#1 去除ST,ST*
st = pd.read_excel('测试样本.xlsx',sheet_name='ST')
st = pd.melt(st,id_vars=['code'],value_vars=st.columns[1:],var_name='date',value_name='ST')
ststar = pd.read_excel('测试样本.xlsx',sheet_name='xST')
ststar = pd.melt(ststar,id_vars=['code'],value_vars=ststar.columns[1:],var_name='date',value_name='xST')
stindex = pd.merge(st,ststar,on=['code','date'])
stindex = stindex[(stindex['ST']=='否') & (stindex['xST']=='否')]
#2 去除非正常交易
regular = pd.read_excel('测试样本.xlsx',sheet_name='交易状态')
regular = pd.melt(regular,id_vars=['code'],value_vars=regular.columns[1:],var_name='date',value_name='regular')
regular = pd.merge(regular,stindex,on=['code','date'])
regular = regular[regular['regular']=='正常交易']
nig = pd.merge(nig,regular,on=['code','date'])
nig = nig[['code','date','increase']]
#3 去除一年内(365days)上市的股票
ipodate = pd.read_excel('测试样本.xlsx',sheet_name='属性')
nig = pd.merge(nig,ipodate,on='code')
nig['上市日期'] = pd.to_datetime(nig['首发上市日期'])
nig['上市时间'] = nig['date'] - nig['上市日期']
nig['上市时间'] = [i.days for i in nig['上市时间']]
nig = nig[nig['上市时间']>365][['code','date','increase']]
#4 保留2010.1-2022.4的股票
nig = nig[nig['date']>='2010-01-01']
nig = nig[nig['date']<'2022-05-01']
nig = nig.dropna()

print(nig)
nig.to_excel("ni.xlsx")#筛选后的数据


###三.因子预处理###
nig = pd.read_excel('ni.xlsx')
#1 去极值
def mad(x,n):
    dm=x.median()
    dmad=((x-dm).abs()).median()
    dmax=dm+n*dmad
    dmin=dm-n*dmad
    return np.clip(x,dmin,dmax)
#2 标准化
def standard(x):
    sigma=x.std()
    u=x.mean()
    return (x-u)/sigma

BasicFactor = pd.DataFrame()
for i in set(nig['date']):
    temp = nig[nig['date']==i]
    temp['increase'] = mad(temp['increase'],5)
    temp['increase'] = standard(temp['increase'])
    BasicFactor = BasicFactor.append(temp)
#3 行业中性化
industry = pd.read_excel('测试样本.xlsx',sheet_name='属性')
BasicFactor = pd.merge(BasicFactor,industry,on='code')
BasicFactor = BasicFactor[BasicFactor.columns[:-1]]
BasicFactor = BasicFactor.set_index('code')
BasicFactor = pd.get_dummies(BasicFactor)

print(BasicFactor.columns[2:])

BasicFactor_s = pd.DataFrame()
for i in set(BasicFactor['date']):
    temp = BasicFactor[BasicFactor['date']==i]
    y = temp['increase']
    x = temp[temp.columns[3:]] 
    est = sm.OLS(y,sm.add_constant(x)).fit()
    temp['increase'] = est.resid
    BasicFactor_s = BasicFactor_s.append(temp)

factor = BasicFactor_s[['date','increase']].reset_index()
print(factor)
factor.to_excel('test.xlsx')