# Data Partitioning

Partitioning allows tables, indexes, or index-organized tables to be subdivided into smaller, manageable partitions. Each partition has its own name.

Partitioning can improve scalability, reduce contention, and optimize performance. It can also provide a mechanism for dividing data by usage pattern. For example, you can archive older data in cheaper data storage.

This  Repository Demonstrates Step-By-Step Implementation Of  Range, List And Sub-partitions  In PostgreSQL

In this repository I have Implementated Partitioning Using [**PostgreSQL**](https://www.postgresqltutorial.com/) 



## Table Of Contents

Partition Type  | Implementation
-------------   | -------------
 List Partition | [Solution](https://github.com/pragyagupta333/DataPartition/blob/main/List_Partition.sql)
Range Partition | [Solution](https://github.com/pragyagupta333/DataPartition/blob/main/Range_Partition.sql)
Sub Partitions  | [Solution](https://github.com/pragyagupta333/DataPartition/blob/main/Sub_Partitions.sql)

## Demo Solutions 
- List Partition
  - Structure :

    ![01_DP](https://github.com/pragyagupta333/DataPartition/assets/125549428/e268e0bd-abfc-4918-8e38-23750de5c49e)

  
  - Result :
 
    ![ListOutput](https://github.com/pragyagupta333/DataPartition/assets/125549428/8a5b820d-4dd8-4572-b824-919a70c05505)



- Range Partition
  - Structure :

    ![02_DP](https://github.com/pragyagupta333/DataPartition/assets/125549428/7a9765b7-bbfa-4e73-abac-50919adb9bdc)


  - Result :

    ![RangeOutput2](https://github.com/pragyagupta333/DataPartition/assets/125549428/8e5ecc53-9108-4413-988a-bc1c7134508d)![RangeOutput3](https://github.com/pragyagupta333/DataPartition/assets/125549428/dd22f017-c54f-47ef-b9d3-656898763678)

 
    

- Sub Partition
  - Structure :
 
  ![03_DP](https://github.com/pragyagupta333/DataPartition/assets/125549428/0b04693f-f1b8-43f0-a07e-91bad5b07a87)

- Result :

    ![SupartOutput](https://github.com/pragyagupta333/DataPartition/assets/125549428/ac631355-6400-4fc7-a88c-ef47b5ec42c7)



## Tools And Technologies
- [PostgreSQL](https://www.postgresql.org/download/)
- [PgAdmin](https://www.pgadmin.org/)



## Resources
 - [RK Malviya Playlist](https://www.youtube.com/playlist?list=PLCiS1ws9lhBvbGAY3w0853BcUD_4nRYaJ)
 - [Table Partitioning in Postgres By EDB ](https://www.youtube.com/watch?v=YxbNN2mxAkU)
 - [PostgreSQL Partitioning By High-Performance Programming](https://www.youtube.com/watch?v=oJj-pltxBUM)
 -  [Practical Partitioning in Production with Postgres By Jimmy Angelakos](https://www.youtube.com/watch?v=edQZauVU-ws)
     
