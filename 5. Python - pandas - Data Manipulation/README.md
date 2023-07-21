# Exploring and transforming data in LEGO Database using Python
![40516](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/00472e33-7df1-4682-8bbf-904c39b54b95)

### Context:
LEGO is a popular brand of toy building bricks. They are often sold in sets in order to build a specific object. Each set contains a number of parts in different shapes, sizes and colors. This database contains information on which parts are included in different LEGO sets. It was originally compiled to help people who owned some LEGO sets already figure out what other sets they could build with the pieces they had.

### Content:
This dataset contains the LEGO Parts/Sets/Colors and Inventories of every official LEGO set in the Rebrickable database. These files are current as of July 2017 and made available on Kaggle at the following [link](https://www.kaggle.com/datasets/rtatman/lego-database). 

### Acknowledgements:
This dataset was compiled by Rebrickable, which is a website to help identify what LEGO sets can be built given bricks and pieces from other LEGO sets.

### About the project:
In this project, I use `pandas` and `matplotlib` to perform data joins, data frame transformation, text string manipulation, create pivot tables and data visualization to answer the following questions:
#### LEGO Theme Analysis: 
[Link to Jupyter Notebook](https://github.com/lanhoang82/Data-Portfolio-1/blob/main/5.%20Python%20-%20pandas%20-%20Data%20Manipulation/LEGO%20Database%20-%20Theme%20Analysis.ipynb)

1. Which are the top 5 themes with the most number of sets?
2. How has the number of sets released in each of the above themes changed over time?
3. What are the average and maximum number of pieces in sets for each of the above themes?
4. Which themes have the highest and lowest average number of pieces per set?

#### LEGO Parts Analysis:
[Link to Jupyter Notebook](https://github.com/lanhoang82/Data-Portfolio-1/blob/main/5.%20Python%20-%20pandas%20-%20Data%20Manipulation/2.%20LEGO%20Database%20-%20Parts%20Analysis.ipynb)
1. What are the top 10 most stocked parts in the parts inventory?
2. How many colors are there across all LEGO parts?
3. What are the top 5 most stocked colors in the parts inventory?
4. What is the distribution of part categories in the dataset?
