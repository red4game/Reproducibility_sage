RF = RealField(1000)
RFM = RealField(999)
set_random_seed(2718281828)
xs = []
ys = []
zs = []
numTests = 10000
testCase = 23
for i in range(numTests):
    xs.append(RF(RFM.random_element(0, 1)))
    ys.append(RF(RFM.random_element(0, 1)))
    zs.append(RF(RFM.random_element(0, 1)))
print("SAGE TESTS")
fails = 0
succs = 0
for i in range(numTests):
    if not ((xs[i] + ys[i]) + zs[i] == xs[i] + (ys[i] + zs[i])):
        fails += 1
    else:
        succs += 1
    if i == testCase:
        print("testcase: ", xs[i], ys[i], zs[i])
print("Succs: ", succs)
print("Fails: ", fails)
print("ratio: ", succs / (numTests))
