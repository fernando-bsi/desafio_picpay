from typing import Any, Callable

from locust import HttpLocust, TaskSet, task, between


class Delete(TaskSet):

    @task
    def delete(self):
        uri = "/posts/100"
       
        headers = {'content-type': 'application/json'}

        resp = self.client.delete(uri, headers=headers)
        print(resp.text)


class FindDelete(HttpLocust):
    task_set = Delete
    wait_time = between(1.0, 4.0)
    host = "https://jsonplaceholder.typicode.com"
