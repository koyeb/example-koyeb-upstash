<div align="center">
  <a href="https://koyeb.com">
    <img src="https://www.koyeb.com/static/images/icons/koyeb.svg" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">Koyeb Serverless Platform</h3>
  <p align="center">
    Deploy an application backed by an Upstash Redis database on Koyeb
    <br />
    <a href="https://koyeb.com">Learn more about Koyeb</a>
    ·
    <a href="https://koyeb.com/docs">Explore the documentation</a>
    ·
    <a href="https://koyeb.com/tutorials">Discover our tutorials</a>
  </p>
</div>


## About Koyeb and the Upstash Redis example application

Koyeb is a developer-friendly serverless platform to deploy apps globally. No-ops, servers, or infrastructure management.
This repository contains an example express application you can deploy on the Koyeb serverless platform for testing.

This example application is designed to show how to deploy an application that uses an Upstash Redis database to Koyeb.

## Getting Started

Follow the steps below to deploy and run the example application on your Koyeb account.

### Requirements

You need a Koyeb account to successfully deploy and run this application. If you don't already have an account, you can sign-up for free [here](https://app.koyeb.com/auth/signup).  You will also need an Upstash account.  You can sign-up for free [here](https://console.upstash.com/login).

### Deploy using the Koyeb button

The fastest way to deploy the example application once you have an Upstash Redis database is to click the **Deploy to Koyeb** button below.

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?type=git&repository=github.com/koyeb/example-koyeb-upstash&branch=main&name=example-koyeb-upstash&env[UPSTASH_REDIS_REST_URL]=REPLACE_ME&env[UPSTASH_REDIS_REST_TOKEN]=REPLACE_ME&env[PORT]=8000)

Clicking on this button brings you to the Koyeb App creation page with everything pre-set to launch this application.

**Note:** You will have to modify the `UPSTASH_REDIS_REST_URL` and `UPSTASH_REDIS_REST_TOKEN` environment variables on the App creation page with the values for your Upstash Redis database.

_To modify this application example, you will need to fork this repository. Checkout the [fork and deploy](#fork-and-deploy-to-koyeb) instructions._

### Fork and deploy to Koyeb

If you want to customize and enhance this application, you need to fork this repository.

If you used the **Deploy to Koyeb** button, you can simply link your service to your forked repository to be able to push changes.
Alternatively, you can manually create the application as described below.

On the [Koyeb Control Panel](//app.koyeb.com/), click the **Create App** button to go to the App creation page.

1. Click **Create App** in the Koyeb control panel.
2. Select **GitHub** as the deployment option.
3. Choose the GitHub **repository** and **branch** containing your application code.
4. Name your service, for example `example-koyeb-upstash`.
5. Click **Advanced** to view additional options.  Under **Environment variables**, click **Add Variable** to add two new variables called `UPSTASH_REDIS_REST_URL` and `UPSTASH_REDIS_REST_TOKEN`.  Populate them with the values you copied for your Upstash Redis database.
6. Name the App, for example `example-koyeb-upstash`.
7. Click the **Deploy** button.

You land on the deployment page where you can follow the build of your example application. Once the build is completed, your application is being deployed and you will be able to access it via `<YOUR_APP_NAME>-<YOUR_ORG_NAME>.koyeb.app`.

## Contributing

If you have any questions, ideas or suggestions regarding this application sample, feel free to open an [issue](//github.com/koyeb/example-koyeb-upstash/issues) or fork this repository and open a [pull request](//github.com/koyeb/example-koyeb-upstash/pulls).

## Contact

[Koyeb](https://www.koyeb.com) - [@gokoyeb](https://twitter.com/gokoyeb) - [Slack](http://slack.koyeb.com/)
