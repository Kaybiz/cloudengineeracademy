# S3 Static Website Hosting with CloudFormation<p></p>
<h2>Description</h2>
<p>This project contains an AWS CloudFormation template for 
setting up an S3 bucket configured for static website 
hosting.</p>
<h2>Template Details</h2>
<p>The CloudFormation template (s3-static.yaml) creates:</p>
<ul>
<li><p>An S3 bucket configured for static website hosting</p>
</li><li><p>A bucket policy allowing public read access</p>
</li></ul>
<h2>Usage</h2>
<ol>
<li><p>Ensure AWS CLI is installed and configured.</p>
</li><li><p>Deploy the stack:
aws cloudformation create-stack --stack-name my-static-website 
--template-body file://s3-static.yaml</p>
</li></ol>
<h2>Parameters</h2>
<ul>
<li><p>BucketName: Name of the S3 bucket (default: 
'XXXXXXXXXXXXXXXXXXXX')</p>
</li></ul>
<h2>Outputs</h2>
<ul>
<li><p>WebsiteURL: URL of the static website</p>
</li></ul>
<h2>Security</h2>
<p>Note: This creates a publicly readable S3 bucket. Only upload 
content intended to be public.</p>
<h2>Author</h2>

