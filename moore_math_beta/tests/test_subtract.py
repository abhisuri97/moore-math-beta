from unittest import TestCase

import moore_math_beta


class TestMath(TestCase):
    def test_subtract(self):
        s = moore_math_beta.subtract(3, 5)
        self.assertTrue(s, -2)
