# Biodiversity Event - A Business Performance Analysis Using Excel and PowerPoint

*Disclaimer*: This project was created as part of a take-home assignment for a job that I was interviewing for. I made it to the final round and got very positive feedback on my technical abilities and cultural fit. Unfortunately, I did not get the job in the end, as the company ended up picking an internal candidate. 
The company did not stipulate any clause of confidentiality on the assignment and the work that I delivered. I am proud of my work and would like thus to showcase what I have done as one of my data projects for the portfolio.

## Context:
Every year, the King Lion invites animals from around the world for an event explicitly focusing on biodiversity. My manager asked me to come up with an analysis of the participating animals to present to the King Lion and his board of directors. 

For the King Lion, it is essential to have a clear picture of the profitability and the logistics needed for the event, but also of the diversity of the invited animals. Furthermore, they would like to know how many of the animals will come for the first time. 

I received data containing details about the animals, their different food preferences (diet), lifespan, weight, and places of origin. As I'm working for the King Lion's board, I've been asked to dissect the data and share the main insights and recommendations I can draw from this data.

## Deliverables:
1. A PowerPoint or Google Slides deck of up to 6 slides (excluding the cover slide) including an executive summary, data visualizations, insights and recommendations.
2. Final Excel workbook showcasing the steps taken to transform and analyze the data.

## About the Received Data:
The received Excel workbook contains four different tabs. Below is the purpose of each tab:
1. **Cover**: The cover tab is the page where I include all final graphs and tables such that it's easy to copy/paste them into my presentation or to derive analysis. This also includes additional graphs/tables even if I decide not to use them in my presentation.
2. **Data — Current**: Contains all the details from the animals that have been invited to this event.

![Current](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/ecf0f334-754b-441f-a750-af23399bc90f)

3. **Data — Previous**: Contains all the names of the animals that have been invited for this event and to previous events (returning animals).

!['Prev](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/4aed3864-b6e6-4a84-bf3c-3e3dd42bbbd9)

4. **Support — Tables**: Contains additional information about some variables. The main value driver (or revenue) is the region of the animal. The main cost driver is the diet of the animal.

![Suppold](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/d087a0b9-8a16-4187-984b-4b322c9c543b)

## Data after Transformation and Steps Taken:
2. **Data — Current**:

Table formatting was applied to enhance readability and ability to navigate. The table was also expanded through a combination of Excel formulas to transform existing data and bring relevant information from other tables for analysis:
![currew](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/439fc342-75cd-49e4-9c61-cf9b7bf060bb)

- Diet column: Missing data and a data entry error were identified. The typo was corrected and missing data were filled in based on the animals' diet information found on the Internet.
- Weight column: Missing data was identified. Attempts were made to find the animals' average weight online to populate missing fields. However, animals with weight information do not fall into a consistent pattern of average weight information available. Given the lack of reliable sources and method of estimation, missing weight data are marked as "N/A".

- Animals' weight and lifespan information were transformed into consistent units (lbs and years respectively) and grouped into more meaningful buckets - Weight Group and Lifespan Group.

Weight column's transformation:

![weight](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/dcc02cf3-dc84-4860-8fb7-6171391fc540)
![weight1](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/7b68d1dd-0e39-43d1-befa-7dc5e7f8d026)

Lifespan column's transformation:

![lifespan](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/9f577ecb-0152-4822-8c04-3aabb94175ed)
![lifespa](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/a37f8ebb-21f5-4d2b-823b-9fad01d3d4d9)

- Information about whether a participant is a returning participant is brought in from the **Data - Previous** table via XLOOKUP

![parti](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/454f680a-8aed-4775-8f9a-d89828a3c378)

- Information about a participant's mode of transport is brought in from the **Support - Tables** table via XLOOKUP

![transp](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/ae8b060c-15ab-44af-928f-0e4f93c96601)

- Information about Revenue and Cost was brought in from the **Support - Tables**, and an additional field of Profit was calculated. 

![rev](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/feddd6af-aa9f-4c1d-a258-ca4918e6c804)
![cost](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/703028dd-c4d1-4b78-845a-d4cb108d8847)

![prof](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/2ec0d06b-d71a-4548-bc6f-52ba1ac14dbb)



3. **Data — Previous**:

Table formatting was applied to enhance readability and ability to navigate. The table was also expanded through a combination of Excel formulas to transform existing data and bring relevant information from other tables for analysis:
![prevda](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/0bc235d7-ddb4-42ef-9065-5643251a33cb)


4. **Support — Tables**:

Table formatting, conditional formatting and sorting were applied to enhance the readability of the table.

![Support](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/621b532d-cdcb-4d6d-901f-c6c9c728650f)

## Presentation Slides and Script: 

#### Slide 1: Cover Slide
![Slide1](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/48bb11f0-e327-4598-a276-5b5f88953663)
 
I'm excited to present the analysis of the upcoming King Lion's biodiversity event. Our goal is to provide a clear picture of this year event's profitability, logistics, diversity, and key insights that can guide us in making informed decisions. Let's dive right in.

#### Slide 2: Executive Summary
![Slide2](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/4d2783ad-509c-4ee8-927b-1f0e54c7c214)

To begin, let's take a look at the executive summary:
- Financially, the event is poised to be successful with a projected total profit of $26,750, resulting in a healthy profit margin of 11.4%. Furthermore, out of the 500 participants, 98 will be attending for the first time, representing 20% of the total.
- Our key insights include the identification of profitable regions such as Asia Pacific, Greater China, and Africa & MENA. However, we've identified challenges in Latin America and Europe & Eurasia due to negative profit margins. The opportunity lies in optimizing cost-effective measures and implementing targeted growth initiatives in Latin America.
- Our top recommendations encompass optimizing costs by evaluating cost structures and potentially reducing unprofitable participants in overly represented regions, unless they are strategic partners. We also suggest focusing on growth in key regions and ensuring diversity by inviting participants from under-represented areas such as Latin America and Japan.
- An "opportunity" refers to a specific area or situation where there is potential for improvement, growth, or positive change

#### Slide 3: Participant Analysis
![Slide3](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/219e10a2-34c1-4fdc-b725-53e37c707979)

Moving on to the participant analysis:
- This year's event will see a total of 500 participants, with 98 being new attendees, making up 20% of the total. 
- By geographic as well as revenue region, we've observed that Latin America has the lowest representation, followed by Africa & MENA. 
- If looking at geographical regions only, we've grouped South Asia, Greater China, Japan, and Asia Pacific into "Greater Asia Pacific," which now accounts for 23% of the participants.
- If looking at revenue regions, interestingly, despite high first-time participant rate, Asia Pacific, Greater China, and Japan are still under-represented.

#### Slide 4: Travel Logistics and Diversity Insights
![Slide4](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/c7742954-93bf-49e4-bd57-d826f18e32cb)

Let's explore travel logistics and diversity insights:
- Our travel logistics reveal a balanced distribution with boat, air, and road transport options. Notably, air transport is favored by participants from diverse regions.
- Diversity-wise, we've observed a broad range of lifespans, with 74% falling under the < 25 years group. In terms of weight, 67% of participants weigh less than 100 lbs.

#### Slide 5: Profitability by Diet
![Slide5](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/e273b007-0318-4d40-9531-652ebb09fb0c)

Switching gears, let's discuss profitability by diet:
- The event is expected to be profitable, boasting an 11.4% profit margin. Herbivore and Omnivore diets stand out as the most profitable options. Despite the Omnivore diet yielding a higher profit compared to the Herbivore, it's important to note that the higher profit is not the sole indicator of financial efficiency.
- The Herbivore diet's higher profit margin suggests it might be more efficient in managing costs and resources, as a larger portion of the revenue is converted into profit, which can contribute to sustained profitability in the long term.
- However, it's noteworthy that Herbivore participants are the smallest group and have the lowest percentage of first-time participants. This indicates significant growth potential for this group.

#### Slide 6: Profitability by Region and Diet
![Slide6](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/ae4fd1f8-7db9-4bed-ba74-a1c165b1b991)

Digging deeper into profitability, let's look at diet and region-specific insights:
- Asia Pacific consistently leads with the highest profit margins across all diet types, closely followed by Greater China and Africa & MENA. Herbivore diets show efficient cost management across most regions, maintaining high profit margins.
- However, participants with a Carnivore diet from Europe & Eurasia and North America face challenges due to higher diet costs. Additionally, both Latin America and Japan experience overall negative profit margins due to lower per-participant revenue.

#### Slide 7: Recommendations
![Slide7](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/0504a792-3d95-4b83-a275-b8640ceff9ca)

I would now like to conclude with our recommendations for next year's event:
- We see growth opportunities in Asia Pacific, Africa & MENA, and Greater China. Doing so would help optimize costs and address regional over-representation. 
- Boosting the presence of Herbivore participants and sustaining growth among Omnivore participants will contribute to this goal, while also enhancing financial performance
- Cost-saving measures include reviewing costs and potentially reducing Carnivore participants from North America and Europe & Eurasia, aligning with our profitability objectives while promoting diet diversity
- Lastly, ensuring diversity representation from under-represented regions like Latin America and Japan is crucial for geographical diversity.
  
Thank you for your time, and I'm open to any questions you may have.

#### Slide 8: Appendix I
![Slide8](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/cb55330d-dd78-497a-af07-6887fb3878be)

#### Slide 9: Appendix II
![Slide9](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/2ef2190d-57d7-41e4-947b-e2dc4bcf96ea)
