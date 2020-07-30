from typing import Any, Callable

from locust import HttpLocust, TaskSet, task, between


class Alter(TaskSet):

    @task
    def put_alter(self):
        uri = "/posts/100"
        payload = {
        "id": 101,
        "title": "aaa",
        "body": "bar",
        "userId": 800
        }
        headers = {'content-type': 'application/json'}

        resp = self.client.put(uri, json=payload, headers=headers)
        print(resp.text)


class FindAlter(HttpLocust):
    task_set = Alter
    wait_time = between(1.0, 4.0)
    host = "https://jsonplaceholder.typicode.com"
