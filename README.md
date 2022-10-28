# s3-upload-remote-file-container

Container to take a remote URL and upload it to S3.  While the [amazon/aws-cli](https://hub.docker.com/r/amazon/aws-cli) container allows you to run `aws cli` commands from a container, it doesn't let you download a file first.  So this container downloads the file and then uploads it.

Mainly made for use with [AWS Batch](https://aws.amazon.com/batch/).

## Environmental Variables

This container has parameters passed to it by using environmental variables:

- `URL`: URL of the file to download
    - EX: `https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip`
- `FILENAME`: The filename to save the file as and upload to S3 as
    - EX: `awscli-exe-linux-x86_64.zip`
- `BUCKET_PATH`: S3 path (including bucket name) to upload the
    - EX: `my-cool-bucket/folder`

In addition, credentials to authenticate using the AWS CLI should be passed as environmental variables as well.  See [Environment variables to configure the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html) for details.