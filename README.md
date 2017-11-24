# Amazon S3 for the AWS Service Broker
Provision, manage and connect to [Amazon S3](https://aws.amazon.com/s3/).

## Prerequisites

**IAM resources** - see the [AWS Service Broker Requirements](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Overview.md#requirements) for details

## Plans

### s3-custom
Exposes all available parameters.

### s3-prod
Best practice S3 bucket for production by setting the following parameters:

    BucketName: automatic
    LoggingPrefix: S3AccessLogs
    EnableGlacierLifeCycle: false
    GlacierLifeCycleTransitionInDays: 30
    LifeCyclePrefix: Archive
    EnableVersioning: true
    BucketAccessControl: Private

## Retained resources

The S3 bucket and the additional logging bucket (if logging is enabled) will be retained as they may contain data.

## Resources

[Getting Started With OCP and the AWS Service Broker](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/getting-started.md)  
[AWS Service Broker Overview](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Overview.md)  
[FAQ](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/FAQ.md)  
[Troubleshooting](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Troubleshooting.md)  

## License

This library is licensed under the Apache 2.0 License.