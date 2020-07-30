from typing import Any, Callable

from locust import HttpLocust, TaskSet, task, between


class Common(TaskSet):

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

    @task
    def patch_alter_part(self):
        uri = "/posts/100"
        payload = {
        "title": "aaa"
        }
        headers = {'content-type': 'application/json'}

        resp = self.client.patch(uri, json=payload, headers=headers)
        print(resp.text)

    @task
    def get_query(self):
        uri = "/posts/100"
       
        headers = {'content-type': 'application/json'}

        resp = self.client.get(uri, headers=headers)
        print(resp.text)

    @task
    def delete(self):
        uri = "/posts/100"
       
        headers = {'content-type': 'application/json'}

        resp = self.client.delete(uri, headers=headers)
        print(resp.text)


class FindCommon(HttpLocust):
    task_set = Common
    wait_time = between(1.0, 4.0)
    host = "https://jsonplaceholder.typicode.com"
