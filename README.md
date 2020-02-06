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
