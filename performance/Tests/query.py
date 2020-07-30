from typing import Any, Callable

from locust import HttpLocust, TaskSet, task, between


class Query(TaskSet):

    @task
    def get_query(self):
        uri = "/posts/100"
       
        headers = {'content-type': 'application/json'}

        resp = self.client.get(uri, headers=headers)
        print(resp.text)


class FindQuery(HttpLocust):
    task_set = Query
    wait_time = between(1.0, 4.0)
    host = "https://jsonplaceholder.typicode.com"
