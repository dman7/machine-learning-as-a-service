# MLaaS
A mock implementation of "Stripe for Machine Learning". One can also refer to this
as Machine-Learning-as-a-Service, or MLaaS.

## Introduction
This is a sample code repository I use to show to potential clients. Through this project,
I want the client to see

* how I write my code, including code format, comments, and git workflow,
* how I reason about, and propose solutions to, under-specified business problems,
* how I architect my code,
* my understanding of web development, and best practices.

The client and the idea are something I made up for demonstration purposes.


## Problem
Suppose that a client approaches me with the idea that they want to be
"[Stripe](https://stripe.com/) for Machine Learning". That is, they want to be
an API platform that allows developers to use the power of machine learning
algorithms without having to implement them. Incidentally, [Wise](http://www.wise.io/)
looks to be doing something along those lines.

The client is looking for a proof-of-concept, also known as an Minimum Viable Product (MVP).

## Solution
On a high-level, my solution is as follows:
1. Write code to define a classification algorithm. Since this is an MVP, one is enough.
A simple linear regression algorithm will do.
2. Design and build out the API that
  a. allows the developer to post their data for asynchronous processing,
  b. triggers a background job to run the classification algorithm on the data,
  c. allows the developer to check the status of the job. If the job is done,
  a result is displayed.
  d. Design a front-end app to demo the product.

I'm going to use GitHub Issues to architect my solution incrementally. In general,
a feature maps one-to-one to a Github Issue. In some cases, big features with
several moving parts (e.g. front-end and back-end changes) wil be split into
several smaller GitHub issues.
