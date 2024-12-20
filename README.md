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

# Technical Architechture 

![image](https://github.com/user-attachments/assets/bcdd9e44-b5cf-4f0a-8dc8-69ac63b552ba)

This diagram represents an end-to-end data pipeline workflow, having MongoDB as the source data repository. The data is extracted using Python, which allows for efficient data retrieval and preprocessing. The preprocessed data is then moved to Azure Blob Storage, a scalable cloud storage solution, for temporary holding purposes. Thence, the data is loaded into Snowflake, a cloud-based data warehouse, for advanced querying and analysis. Using dbt (the data build tool), SQL-based transformations clean, model, and set the data in a posture to be visualized. Finally, this transformed and structured data is taken up in Tableau, where interactive visualizations, dashboards, and reports can be made for actionable insights. This pipeline constitutes an efficient ELT (Extract, Load, Transform) process designed for scalability and ease of analysis.

# Result

![image](https://github.com/user-attachments/assets/496b34d7-d90a-42a0-91aa-696bbf022a03)

This bar chart shows the number of professionals in different medical specialties. The most populous specialty is "family-gp", comprising 58,794 professionals, way ahead of the rest. "Dentists" and "nurse-practitioners" follow, having 27,631 and 22,906 respectively, showing their widespread presence. Specialties such as "internist-geriatrician" and "psychologist" also hold substantial numbers, while fields like "psychiatrist" and "orthopedics-sports" have fewer professionals, with 5,717 and 5,239 respectively. This would tend to indicate that general practitioners and dental professionals are in high demand, as would be expected from general healthcare needs, whereas psychiatry and orthopedics might be considered more specialized fields.

![image](https://github.com/user-attachments/assets/4502fca3-0d3e-46e2-974b-35a59292e984)

This heat map shows the distribution of doctors by their acceptance and verification status across months, which also includes categories like "Accepting & Verified," "Accepting Only," "Verified Only," and "Neither." A large number of doctors belonged to the category "Accepting & Verified," which is depicted here with a lighter green color tone, while the counts run up to 239,211. This suggests a strong concordance of acceptance and verification, and is likely to be doctors who are active and at least to the standards for verification. Other categories, such as "Neither" and "Accepting Only", contain far fewer doctors, represented by darker shades, indicating a smaller subset of doctors without verification or not currently taking patients. This bar plot shows that most of the doctors are in the "Accepting & Verified" category, indicating a significance within the dataset or probably indicating a higher demand for verified and accepting practitioners.

![image](https://github.com/user-attachments/assets/cf38e4f1-801e-4c5d-866f-29e507530360)

This line chart shows the trend of appointments over time, categorized by medical specialties. There is a large variation in the count of appointments across different specialties, with some peaks corresponding to dermatology and family general practitioners. These spikes hint at higher demand for these services at specific times, possibly due to seasonal factors or public health trends. Other specialties, including acupuncture and audiology, show relatively stable and low appointment trends. This chart really points out the dynamism in healthcare demand and how periodic surges occur for some specialties, while others remain constant. This can be important in resource and workforce planning in health facilities.

![image](https://github.com/user-attachments/assets/b9a7c3d5-1775-491d-a523-7ec6011fb4e3)

This pie chart illustrates the Distribution of Doctors by Acceptance Status, grouping whether the doctors are currently accepting new patients. According to this chart, 70.89% accept new patients ("True") and 29.11% are not accepting new patients ("False"). This visualization indicates a sense of the availability of healthcare providers to accommodate new patients-a critical metric for assessing healthcare accessibility in a community. The large majority of physicians accepting new patients are indicative of a generally good capacity for patient intake; however, the almost 30% not accepting might suggest limited access to certain specialties or regions. This information can be useful to healthcare policymakers, administrators, and patients when planning and making decisions.

# Future Work 

This diagram outlines the future focus on advancing healthcare technology through strategic collaboration with key stakeholders. Core is the integration of health platforms like ZocDoc and Cerner, allowing full sharing of data and improving patient outcomes. These platforms will form the backbone of enhanced interoperability and smooth communication across the healthcare ecosystem. This is equally necessary in terms of integration with clinics and hospitals, assuring optimized workflows and effective system adoption for overall operational efficiencies. Policymaker engagement will address the challenges of regulatory issues, set standardized practices, and advocate for new technologies to be adopted in the industry. Added to this is collaboration with healthcare administrators to make sure solutions meet the demands of the operation and enhance practicality with successful results.The focus on these priority areas-platform integration, hospital collaboration, policy alignment, and administrative engagement-are the keys to establishing a unified, efficient, and innovative healthcare system that will benefit patients and providers alike.



