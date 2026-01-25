from liztomaniac.api.app import health


def test_health():
    assert health() == {"status": "ok"}
