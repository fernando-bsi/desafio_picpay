from typing import Any, Callable

from locust import HttpLocust, TaskSet, task, between


class AlterParte(TaskSet):

    @task
    def patch_alter_part(self):
        uri = "/posts/100"
        payload = {
        "title": "aaa"
        }
        headers = {'content-type': 'application/json'}

        resp = self.client.patch(uri, json=payload, headers=headers)
        print(resp.text)


class FindAlterParte(HttpLocust):
    task_set = AlterParte
    wait_time = between(1.0, 4.0)
    host = "https://jsonplaceholder.typicode.com"
