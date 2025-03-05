# AWS resources overview

## 1. The main base line Shared responsibility model
AWS responsibility **“Security of the Cloud”** - AWS is responsible for protecting the infrastructure that runs
all of the services offered in the AWS Cloud. This infrastructure is composed of the hardware, software,
networking, and facilities that run AWS Cloud services.

Customer responsibility **“Security in the Cloud”** – Customer responsibility will be determined by the AWS Cloud
services that a customer selects. This determines the amount of configuration work the customer must perform as
part of their security responsibilities. For example, a service such as Amazon Elastic Compute Cloud (Amazon EC2)
is categorized as Infrastructure as a Service (IaaS) and, as such, requires the customer to perform all of the
necessary security configuration and management tasks. Customers that deploy an Amazon EC2 instance are responsible
for management of the guest operating system (including updates and security patches), any application software
or utilities installed by the customer on the instances, and the configuration of the AWS-provided firewall
(called a security group) on each instance. For abstracted services, such as Amazon S3 and Amazon DynamoDB,
AWS operates the infrastructure layer, the operating system, and platforms, and customers access the endpoints
to store and retrieve data. Customers are responsible for managing their data (including encryption options),
classifying their assets, and using IAM tools to apply the appropriate permissions.

## 2. AWS Identity and Access Management
Why use IAM?
* a. Use AWS Identity and Access Management (IAM) to manage and scale workload and workforce access securely
supporting your agility and innovation in AWS.
* b. Set and manage guardrails with broad permissions, and move toward least privilege by using fine-grained
access controls for your workloads.
* c. Grant temporary security credentials for workloads that access your AWS resources using IAM and grant your
workforce access with AWS IAM Identity Center.
* d. Generate least-privilege policies, verify external and unused access to resources, and continually analyze
to rightsize permissions.

## 3. Regions and Zones
Amazon EC2 is hosted in multiple locations world-wide. These locations are composed of 
* AWS Regions, 
* Availability Zones, 
* Local Zones, 
* AWS Outposts, 
* Wavelength Zones.


* **Regions** are separate geographic areas.
* **Availability Zones** are multiple, isolated locations within each Region.
* **Local Zones** provide you with the ability to place resources, such as compute and storage, in multiple locations
closer to your end users.
* **Wavelength Zones** provide you with the ability to build applications that deliver ultra-low latencies to 5G
devices and end users. Wavelength deploys standard AWS compute and storage services to the edge of telecommunication
carriers' 5G networks.
* **AWS Outposts** brings native AWS services, infrastructure, and operating models to virtually any data center,
colocation space, or on-premises facility.

## 4. Storage service
### S3
the name unique for the all cloud - web sites - storage
Amazon **Simple Storage Service** (Amazon S3) is an object storage service offering industry-leading scalability,
data availability, security, and performance. Millions of customers of all sizes and industries store, manage,
analyze, and protect any amount of data for virtually any use case, such as data lakes, cloud-native applications,
and mobile apps. With cost-effective storage classes and easy-to-use management features, you can optimize costs,
organize and analyze data, and configure fine-tuned access controls to meet specific business and compliance
requirements.
* a. **Scalability**
You can store virtually any amount of data with S3 all the way to exabytes with unmatched performance.
S3 is fully elastic, automatically growing and shrinking as you add and remove data. There’s no need to
provision storage, and you pay only for what you use.
* b. **Durability and availability**
Amazon S3 provides the most durable storage in the cloud and industry leading availability. Based on its unique
architecture, S3 is designed to provide 99.999999999% (11 nines) data durability and 99.99% availability by default,
backed by the strongest SLAs in the cloud.
* c. **Security and data protection**
Protect your data with unmatched security, data protection, compliance, and access control capabilities.
S3 is secure, private, and encrypted by default, and also supports numerous auditing capabilities to monitor access
requests to your S3 resources.

### S3 Glacier
The Amazon S3 Glacier storage classes are purpose-built for data archiving, providing you with the highest
performance, most retrieval flexibility, and the lowest cost archive storage in the cloud. All S3 Glacier storage
classes provide virtually unlimited scalability and are designed for 99.999999999% (11 nines) of data durability.
The S3 Glacier storage classes deliver options for the fastest access to your archive data and the lowest-cost
archive storage in the cloud.

### EBS - Elastic Block Store
dedicated to instances in the same availability zone
Protect against failures with high availability, including replication within Availability Zone (AZs), and 99.999%
durability with io2 Block Express volumes.

**Use cases**
* a. Build your mission-critical, I/O intensive applications in the cloud
Migrate mid-range, on-premises storage area network (SAN) workloads to the cloud. Attach high-performance
and high-availability block storage for mission-critical applications.
* b. Run relational or NoSQL databases
Deploy and scale your choice of databases, including SAP HANA, Oracle, Microsoft SQL Server, PostgreSQL, MySQL,
Cassandra, and MongoDB.
* c. Right-size your big data analytics engines
Easily resize clusters for big data analytics engines, such as Hadoop and Spark, and freely detach and reattach
volumes.

### EFS  Elastic File System (sharable) - 
can be used many instances - not supported by windows, support many
availability zones
Serverless, fully elastic file storage
Create and configure shared file systems simply and quickly for AWS compute services—no provisioning,
deploying, patching, or maintenance required.
Scale workloads on-demand to petabytes of storage and gigabytes per second of throughput out of the box.
Securely and reliably access your files with a fully managed file system designed for 99.999999999 percent (11 9s)
durability and up to 99.99 percent (4 9s) of availability.

### Amazon FSx 
simple and fully managed other aws services could access to it
Launch, run, and scale feature-rich and highly-performant file systems with just a few clicks
Amazon FSx makes it easy and cost effective to launch, run, and scale feature-rich, high-performance file systems
in the cloud. It supports a wide range of workloads with its reliability, security, scalability, and broad set of
capabilities. Amazon FSx is built on the latest AWS compute, networking, and disk technologies to provide high
performance and lower TCO. And as a fully managed service, it handles hardware provisioning, patching,
and backups -- freeing you up to focus on your applications, your end users, and your business.

Amazon FSx lets you choose between four widely-used file systems: NetApp ONTAP, OpenZFS, Windows File Server,
and Lustre. This choice is typically based on your familiarity with a given file system or by matching the file
system's feature sets, performance profiles, and data management capabilities to the requirements of your workload.

## 5. Compute Cloud Services EC2 pay for use
Virtual machine in the cloud
Elastic Compute Cloud (Amazon EC2) offers the broadest and deepest compute platform, with over 750 instances and
choice of the latest processor, storage, networking, operating system, and purchase model to help you best match the
needs of your workload. We are the first major cloud provider that supports Intel, AMD, and Arm processors, the only
cloud with on-demand EC2 Mac instances, and the only cloud with 400 Gbps Ethernet networking. We offer the best
price performance for machine learning training, as well as the lowest cost per inference instances in the cloud.
More SAP, high performance computing (HPC), ML, and Windows workloads run on AWS than any other cloud.
* a. Optimize performance and cost
Optimize performance and cost with flexible options like AWS Graviton-based instances, Amazon EC2 Spot instances,
and AWS Savings Plans.
* b. Instances type. Type or class. Simple, multiprocessor, graphical
+ **General purpose** (basic usage, website)
+ **Compute optimised** - started with c letter - a lot of calculations - compute intensive
+ **Memory optimised** - high memory installation - big data in to memory or dataset
+ **Storage optimised** - relational databases, warehousing
+ **Advanced computing** - very special GPU making 3D rendering

## 6. Databases
Hosted services databases - relational SQl and NoSQl (DynamoDB)
Aurora, MySQL, PostgreSQL
Data warehouses - Redshift

## 7. Serveless
**Lambda** (a lot of languages)
AWS Lambda is a compute service that runs your code in response to events and automatically manages the compute
resources, making it the fastest way to turn an idea into a modern, production, serverless applications.
AWS Lambda, a serverless compute service, executes your code in response to events, handling compute resources
for you. Discover how AWS's comprehensive set of infrastructure capabilities and services enables rapid and
cost-effective modern applications development.
* a. **No need for managing servers**
Run code without provisioning or managing infrastructure. Simply write and upload code as a .zip file or container
image.
* b. **Automatic scaling**
Automatically respond to code execution requests at any scale, from a dozen events per day to hundreds of thousands
per second.
* c. **Pay-as-you-go pricing**
Save costs by paying only for the compute time you use—by the millisecond—instead of provisioning infrastructure
upfront for peak capacity.
* d. **Performance optimization**
Optimize code execution time and performance with the right function memory size. Respond to high demand in
double-digit milliseconds with Provisioned Concurrency.

**Use cases**

* a. **Quickly process data at scale**
Meet resource-intensive and unpredictable demand by using AWS Lambda to instantly scale out to more than 18k vCPUs.
Build processing workflows quickly and easily with suite of other serverless offerings and event triggers.
* b. **Run interactive web and mobile backends**
Combine AWS Lambda with other AWS services to create secure, stable, and scalable online experiences.
* c. **Enable powerful ML insights**
Preprocess data before feeding it to your machine learning (ML) model. With Amazon Elastic File System (EFS) access,
AWS Lambda handles infrastructure management and provisioning to simplify scaling.
* d. **Create event-driven applications**
Build event-driven functions for easy communication between decoupled services. Reduce costs by running applications
during times of peak demand without crashing or over-provisioning resources.

The AWS Lambda free tier includes one million free requests per month and 400,000 GB-seconds of compute time per
month, usable for functions powered by both x86, and Graviton2 processors, in aggregate. Additionally, the free tier
includes 100GiB of HTTP response streaming per month, beyond the first 6MB per request, which are free. Lambda also
offers tiered pricing options for on-demand duration above certain monthly usage thresholds. AWS Lambda participates
in Compute Savings Plans, a flexible pricing model that offers low prices on Amazon Elastic Compute Cloud
(Amazon EC2), AWS Fargate, and Lambda usage, in exchange for a commitment to a consistent amount of usage (measured
in $/hour) for a one- or three-year term. With Compute Savings Plans, you can save up to 17 percent on AWS Lambda.
Savings apply to duration and Provisioned Concurrency

## 8. SQS Amazon Simple Queue Service
Fully managed message queuing for microservices, distributed systems, and serverless applications
Amazon Simple Queue Service (Amazon SQS) lets you send, store, and receive messages between software components
at any volume, without losing messages or requiring other services to be available.
* a. **Overhead made simple**
Eliminate overhead with no upfront costs and without needing to manage software or maintain infrastructure.
* b. **Reliability at scale**
Reliably deliver large volumes of data, at any level of throughput, without losing messages or needing other
services to be available.
* c. **Security**
Securely send sensitive data between applications and centrally manage your keys using AWS Key Management.
* d. **Cost-effective scalability**
Scale elastically and cost-effectively based on usage so you don’t have to worry about capacity planning and
preprovisioning.

## 9. ECS Elastic Container Service, 
(Usecase working with ECR service)
Elastic Container Service (Amazon ECS) is a fully managed container orchestration service that helps you to
more efficiently deploy, manage, and scale containerized applications. It deeply integrates with the AWS
environment to provide an easy-to-use solution for running container workloads in the cloud and on premises
with advanced security features using Amazon ECS Anywhere.
ECS delivers the easiest way to build, deploy, and manage containerized applications at any scale on AWS

Simply describe your application and the resources required and Amazon ECS will launch, monitor, and scale your
application across flexible compute options with automatic integrations to other supporting AWS services that your
application needs. Perform system operations such as creating custom scaling and capacity rules, and observe and
query data from application logs and telemetry.

* a. **Launch containers at scale**
Launch containers on AWS at scale without worrying about the underlying infrastructure.
* b. **Reduce costs with pay-as-you-go pricing**
Reduce costs with automatic scaling and pay-as-you-go pricing across multiple AWS compute options.
* c. **Increase speed and agility**
Deploy faster and focus on your applications by using Amazon ECS with AWS Fargate serverless compute for containers.
* d. **Optimize for security and compliance**
Build on Amazon ECS with confidence, knowing that the security, compliance, and architecture meet regulatory
standards.

**Use cases**

* a. **Modernize applications**
Empower developers to build and deploy applications with enhanced security features in a fast, standardized,
compliant, and cost-efficient manner with Amazon ECS.
* b. **Automatically scale web applications**
Automatically scale and run web applications in multiple Availability Zones with the performance, scale, reliability,
and availability of AWS.
* c. **Support batch processing**
Plan, schedule, and run batch computing workloads across AWS services, including Amazon Elastic Compute Cloud (EC2),
AWS Fargate, and Amazon EC2 Spot Instances.
* d. **Train NLP and AI/ML models**
Train natural language processing (NLP) and other artificial intelligence (AI) / machine learning (ML) models
without managing the infrastructure by using Amazon ECS with AWS Fargate.

## 10. CloutWatch
CloudWatch is a service that monitors applications, responds to performance changes, optimizes resource use,
and provides insights into operational health. By collecting data across AWS resources, CloudWatch gives visibility
into system-wide performance and allows users to set alarms, automatically react to changes, and gain a unified
view of operational health.

* a. Visualize and analyze your data with end-to-end observability
Collect, access, and analyze your resource and application data using powerful visualization tools
* b. **Operate efficiently with automation**
Improve operational performance using alarms and automated actions set to activate at predetermined thresholds
* c. Quickly obtain an integrated view of your AWS or other resources
Seamlessly integrate with more than 70 AWS services for simplified monitoring and scalability
* d. Proactively monitor and get actional insights to enhance end user experiences
Troubleshoot operational problems with actionable insights derived from logs and metrics in your CloudWatch dashboards

**Use cases**

* a. **Monitor application performance**
Visualize performance data, create alarms, and correlate data to understand and resolve the root cause of performance
issues in your AWS resources
* b. **Perform root cause analysis**
Analyze metrics, logs, logs analytics, and user requests to speed up debugging and reduce overall mean time to
resolution
* c. **Optimize resources proactively**
Automate resource planning and lower costs by setting actions to occur when thresholds are met based on your
specifications or machine learning models
* d. **Test website impacts**
Find out exactly when your website is impacted and for how long by viewing screenshots, logs, and web requests
at any point in time

## 11. AWS Fargate
**Serverless compute for containers**
AWS Fargate is a serverless, pay-as-you-go compute engine that lets you focus on building applications without 
managing servers. Moving tasks such as server management, resource allocation, and scaling to AWS does not only 
improve your operational posture, but also accelerates the process of going from idea to production on the cloud, 
and lowers the total cost of ownership. 

* Manage your applications, not infrastructure
Deploy and manage your applications, not infrastructure. Remove the operational overhead to scale, patch, help 
secure, and manage servers.
* Monitor your applications to gain metrics and insights
Monitor your applications through built-in integrations with AWS services like Amazon CloudWatch Container 
Insights or gather metrics and logs with third-party tools.
* Improve security through isolation
Improve security through workload isolation by design. Amazon ECS tasks and Amazon EKS pods run in their own 
dedicated runtime environment.
* Optimize for cost
Pay only for compute resources used, with no upfront expenses. Further optimize costs with Savings Plans, 
Fargate Spot, or AWS Graviton processors.

Fargate is compatible with both Amazon **Elastic Container Service** (Amazon ECS) and Amazon **Elastic Kubernetes 
Service** (Amazon EKS). Select any OCI-compliant container image, define memory and compute resources, and run 
the container with serverless compute. With multiple CPU architectures and operating systems supported, you 
can enjoy the benefits across a wide variety of applications.

**Use cases**

* Web apps, APIs, and microservices
Build and deploy your applications, APIs, and microservices architectures with the speed and immutability 
of containers. Remove the need to own, run, and manage the lifecycle of a compute infrastructure, so you can 
focus on your applications.
* Modernize applications
Use AWS Fargate with Amazon ECS or Amazon EKS to more easily run and scale your containerized workloads. 
Migrate and run your Amazon ECS Windows containers without refactoring or rearchitecting your legacy applications.
* Support AI and ML applications
Create a flexible and portable artificial intelligence (AI) and machine learning (ML) development environment. 
Train, test, and deploy your ML models with scalable resources that boost server capacity while avoiding 
overprovisioning.
* Data processing
Run data processing workloads, scale up to 16 vCPU and 120 GB memory per task, and integrate with AWS Batch for 
serverless parallel processing.

## 12. Other Serveless AWS
* **Amazon EventBridge**
Amazon EventBridge makes it easier to build event-driven applications at scale using events generated from your 
applications, integrated SaaS applications, and AWS services.
* **AWS Step Functions**
Step Functions is a visual workflow service that helps developers use AWS services to build distributed 
applications, automate processes, orchestrate microservices, and create data and machine learning (ML) pipelines.
SNS. Amazon Simple Notification Service
SNS Fully managed Pub/Sub service for A2A and A2P messaging
* **Amazon API Gateway**
Amazon API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, 
monitor, and secure APIs at any scale. APIs act as the "front door" for applications to access data, business 
logic, or functionality from your backend services. Using API Gateway, you can create RESTful APIs and WebSocket 
APIs that enable real-time two-way communication applications. API Gateway supports containerized and serverless 
workloads, as well as web applications.
API Gateway handles all the tasks involved in accepting and processing up to hundreds of thousands of concurrent 
API calls, including traffic management, CORS support, authorization and access control, throttling, monitoring, 
and API version management. API Gateway has no minimum fees or startup costs. You pay for the API calls you 
receive and the amount of data transferred out and, with the API Gateway tiered pricing model, you can reduce 
your cost as your API usage scales.
* **AWS AppSync**
Connect applications to events, data, and AI models
  
  **Use cases**
    * An AI gateway for Amazon Bedrock
    Use AWS AppSync to simplify integration with AI backends like Amazon Bedrock.

    * Create an AI gateway
    A federated GraphQL API for all your data
    Combine multiple GraphQL source APIs into a single Merged GraphQL API “super graph."

    * Build an AppSync managed supergraph
    Amazon Aurora and DynamoDB APIs
    Introspect your SQL and NoSQL databases and automatically create an API layer.

    * Instant database APIs
    Real-time experiences
    Create a pub/sub solution for your real-time events
