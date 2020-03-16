from unittest import TestCase

import moore_math_beta

class TestMath(TestCase):
    def test_add(self):
        s = moore_math_beta.add(2, 3)
        self.assertTrue(s, 5)
