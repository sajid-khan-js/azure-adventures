import unittest
import requests


class TestFunction(unittest.TestCase):
    def test_function(self):
        response = requests.get("http://localhost:7071/api/resumevisitcounter")
        assert response.status_code == 200
        assert "value" in response.text 
