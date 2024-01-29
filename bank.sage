RF = RealField(1000000)
RFM = RealField(100)
bank = RF(e)
years = 50
for i in range(1,years+1):
    bank-=RF(1)
    bank*=RF(i)
    print("bank",RFM(bank))
print(RFM(bank-RF(1)))
