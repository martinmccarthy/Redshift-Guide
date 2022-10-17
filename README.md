Prerequisites:
    Set up an amazon redshift cluster:
    - Create a cluster in the amazon redshift dashboard.
    - Define an admin user and password for access.
    - Enter the IAM dashboard and provide your user with full redshift access.
    - Run the setup data in the amazon redshift cluster that you are working in. This is located in [setupscript.sql](../master/setupscript.sql)

    Set up an S3 bucket:
    - In the S3 dashboard, create a bucket
    - IMPORTANT: Whatever bucket name you define here you must edit in the .yaml file, this is found under the parameters 'DDLScriptS3Path' and 'QueryScriptS3Path'
    - Inside of the objects tab of your newly created bucket, insert the [queryscript.sql](../master/queryscript.sql) and [setupscript.sql](../master/setupscript.sql)
    
    Set up a CloudFormation Stack:
    - Enter the stacks tab from the CloudFormation dashboard 
    - Create a stack with new resources
    - Under specify template, upload the provided [redshift.yaml](../master/redshift.yaml) file, which will set up your CloudFormation 
    - Enter a desired stack name
    - On your redshift cluter's general information page, grab your endpoint and enter this into the RedshiftClusterEndpoint input
    - In 'DbUsername' enter the Redshift database username you've defined in the previous set up step.
    - Include the paths from your created S3 bucket in the locations of DDLScriptS3Path and QueryScriptS3Path, these should be defined by your yaml if you edited it properly, if not adjust in these inputs.

Now that all of this is defined:
    Inside of your CloudFormation Stack:
    - Enter the outputs tab, in here you should see RedshiftDataApiWebSocketEndpoint. Copy this value and input it into the index.html under the variable wsEndpoint.

This should allow you to successfully run an external connection to amazon redshift for querying. Happy coding!


Some more useful links / References utilized:
[Getting Started With Amazon Redshift Data API](https://github.com/aws-samples/getting-started-with-amazon-redshift-data-api/blob/main/use-cases/api-gateway-websocket-redshift-event-driven-web-app/) 

[Getting Started With AWSCloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/GettingStarted.Walkthrough.html)

[Creating your first S3 Bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-bucket.html)
