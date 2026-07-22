import requests

def test_github_api_up():
    resp = requests.get("https://api.github.com", timeout=10)
    assert resp.status_code == 200