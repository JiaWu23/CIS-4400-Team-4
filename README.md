# Business Requirement: 


Business problem: A growing number of people are moving to new places, making it difficult and time-consuming to locate trustworthy healthcare professionals in an unknown place. People look for the best doctors by reading reviews and ratings and taking their preferred location into account. Users cannot readily compare providers based on location and specialty thanks to the fragmented and non-standardized nature of the current healthcare data. 

Our proposal is to create a complete data solution that categorizes doctor ratings according to geography (state, city, county) and specialization. This will enable users to locate the finest healthcare providers in their new area through an interactive platform that allows them to evaluate and review doctors.

Benefits: The purpose of this project is to create a better accessible and structured healthcare information system, which will benefit all users and providers involved. The tension and effort involved in locating high-quality healthcare in new locations will be reduced because of the centralized data warehouse, which will enable people to decide regarding healthcare providers based on ratings, geography, and specialization. Additionally, the site will improve users' entire healthcare experience by assisting them find highly-rated experts.


Cost:  The project's anticipated cost includes a number of essential factors, for example- staff, development, data gathering, and maintenance. Collecting data details and getting thorough ratings information on healthcare could include paying license fees to data suppliers. The platform's user interface and backend infrastructure for data processing and storage will be built, and these expenses will be covered by development funds. Pay for data engineers, software developers, project managers, and quality assurance teams will be included in personnel costs. The project is expected to take 12 months to complete, with phases for data collecting, development, testing, and deployment. After launch, further upkeep and assistance will be needed to guarantee platform operation and data accuracy.

Risks: One of the project's risks is the possibility of bias in the ratings, since user reviews might not always reflect an unbiased evaluation of a healthcare provider's performance. Individual expectations and personal experiences can have a significant impact on ratings and make it difficult to accurately represent a doctor's overall quality of care. To counter this, the platform will use algorithms to identify and flag anomalies in the reviews, like extreme ratings or irregular feedback patterns. Moreover, by offering users in-depth analyses of ratings across different dimensions (e.g., helpfulness, bedside manner), users will have a more nuanced perspective, which will help to lessen the impact of biased ratings.

# Information Architechture:

![image](https://github.com/user-attachments/assets/f3d18cde-b064-4f2d-aada-35d6f0dba4ad)

An Overview of the Data-Processing Pipeline The diagram portrays two information amalgamations, rating data for the specialty of Data and Census Data, feeding information into a single centralised data warehouse. First and foremost, in the stage of Gathering, raw information gets captured from the two mentioned different data sources. Further on, there is the Cleaning part for eliminating inconsistencies, incorrect, or redundant data elements. Finally, there was also a Reformat part towards structuring. Deeper in the process, the separation happens: the reformatted Rating data undergoes a Transform phase, where this data is made ready for special analytical needs, whereas both datasets continue with the Process stage, where computations and enhancements are made. The outputs of the two data streams are combined in a Consolidate phase into one unified dataset. The consolidated data is finally loaded into the data warehouse, which is the central repository for storage, analysis, and reporting. This structured pipeline ensures high-quality integrated data for decision-making and analytics.


# Data Architecture

<img width="723" alt="image" src="https://github.com/user-attachments/assets/d48ad50e-e0d2-4c25-b998-455eeaa1a9c7">

The data architecture for this project is a bottom-up approach, amalgamating external sources like RateMDs and Healthgrade for the strong collection and processing of data. At the initial stages, raw data from these sources is collected and stored in a Temporary Storage system, which will serve as a holding area for subsequent processing. This will ensure that the raw data has been consolidated while ensuring consistency and integrity in that respect. This is then transformed from the temporary storage and moved into a Data Mart, optimized for faster retrieval and analytics. Data marts represent a central hub where cleaned and processed data is formatted for particular analysis or business needs. Finally, the data goes to the Data Visualization layer, where insights are displayed in actionable forms, such as dashboards or reports. It is an architecture that assures scalability, integrity, and efficiency in retrieval for seamless transition from raw data collection to actionable insight.


## DB Schema

![db_schema_Group2_CIS400](https://github.com/user-attachments/assets/29c4b94e-6e33-4884-9b5f-4a8e22ae504d)







