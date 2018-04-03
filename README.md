# auryc-pod-spec

To push a version to the private pod, follow the instructions below.

## One time set up: set up the local environment
```
pod repo add auryc_pod_dev https://github.com/auryc-dev-partner/auryc_pod_spec.git
cd ~/.cocoapods/repos/auryc_pod_dev
pod repo lint .
```

## Create local build and upload to S3
1. Use XCode to create the Auryc SDK framework and generate the zip file
2. Upload the zip file to S3 bucket s3://auryc.sdk

## Push the S3 file to this private pod
1. Edit Auryc.podspec file and update the version number, source file location, and other data if necessary
```
s.version      = "0.3.1.14"
s.source = {
   :http => 'https://s3.amazonaws.com/auryc.sdk/prod/Auryc.framework_masking8.0.zip'
}
```
2. Push the zip file to the private pod
```
pod repo push auryc_pod_dev /Users/fengshao/Work/Projects/dev-partner/auryc_pod_spec/Auryc.podspec  --allow-warnings
```

If you run into the error, 
```
Validating spec
Cloning spec repo `-1` from ``
[!] Unable to add a source with url `` named `-1`.
You can try adding it manually in `~/.cocoapods/repos` or via `pod repo add`.
```

Run this command instead,
```
pod repo push --sources=https://github.com/auryc-dev-partner/auryc_pod_spec.git,https://github.com/CocoaPods/Specs auryc_pod_dev /Users/fengshao/Work/Projects/dev-partner/auryc_pod_spec/Auryc.podspec --allow-warnings
```