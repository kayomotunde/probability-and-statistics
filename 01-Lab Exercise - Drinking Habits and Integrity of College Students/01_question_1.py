# recreate question 1 using python
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("drinking.csv", index_col=0)
alcohol = df['Alcohol']

alcohol.describe()

plt.hist(alcohol)
plt.show()
