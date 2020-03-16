from unittest import TestCase

import moore_math_beta


class TestMath(TestCase):

    def test_multiply(self):
        s = moore_math_beta.multiply(2, 3)
        self.assertTrue(s, 6)
