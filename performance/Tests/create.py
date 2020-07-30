from typing import Any, Callable

from locust import HttpLocust, TaskSet, task, between


class Create(TaskSet):

    @task
    def post_create(self):
        uri = "/posts"
        payload = {
        "title": "foo",
        "body": "bar",
        "userId": 1
        }
        headers = {'content-type': 'application/json'}

        resp = self.client.post(uri, json=payload, headers=headers)
        print(resp.text)


class FindCreate(HttpLocust):
    task_set = Create
    wait_time = between(1.0, 4.0)
    host = "https://jsonplaceholder.typicode.com"
