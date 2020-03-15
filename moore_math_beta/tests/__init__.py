from unittest import TestCase

import moore_math_beta


class TestJoke(TestCase):
    def test_add(self):
        s = moore_math_beta.add(2, 3)
        self.assertTrue(s, 5)

    def test_multiply(self):
        s = moore_math_beta.multiply(2, 3)
        self.assertTrue(s, 6)
