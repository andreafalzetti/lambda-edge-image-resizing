# lambda-edge-image-resizing

This is a modified version of [Resizing Images with Amazon CloudFront & Lambda@Edge | AWS CDN Blog](https://aws.amazon.com/ko/blogs/networking-and-content-delivery/resizing-images-with-amazon-cloudfront-lambdaedge-aws-cdn-blog/) for my own use.

### Things that differ from the blog post:

#### Dockerfile:
- Updated versions of `nvm` and `node` (as of February, 2020).
- Uses gzip


## Build Steps:

1. Compile the lamdba functions using docker: `sh docker_build.sh`
2. Package up the functions into zip files: `sh package_build.sh`
3. Upload zips to S3, as instructed in the blog post (Step 1, point 7)

## Testing Locally (macOS):

#### NB: For detailed instructions on the tools and setup involved in this section, please refer to the [full AWS SAM CLI documentation](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)

In order to test in your development environment on macOS, you will need to do a bit of setting up first. [Follow these instructions to install the AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-mac.html).
In summary, you will require the following:

1. An [AWS account](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/)
2. Set up an [IAM user with administrator permissions](https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html)
3. Installed [Docker](https://docker.com)
4. Installed [Homebrew](https://docs.brew.sh/)
5. Installed the [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html) via Homebrew

At this stage you should confirm that you have the AWS SAM CLI installed: `sam --version`.

To make full use of the AWS SAM CLI you must also set up your [AWS credentials](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-getting-started-set-up-credentials.html) on your development machine.

---

Once you have completed the setup of the AWS SAM CLI, you can [debug Node.js functions locally](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-using-debugging-nodejs.html) from within VS Code.

Since the documentation above isn't the clearest, you can also check out the following video [about debugging Lambda functions from within VS Code](https://youtu.be/FINV-VmCXms). Whilst the actions that they perform in the video aren't exactly the same, it will give you an idea of the sorts of functionality that the AWS Toolkit VS Code extension provides.
