/**
 * Authors: Szabo Bogdan <szabobogdan@yahoo.com>
 * Date: 9 13, 2015
 * License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
 * Copyright: Public Domain
 */
module swaggerize.test.composites;

import swaggerize.composites;
import std.stdio;
import tested: testName = name;

@testName("It should find the handlers")
unittest {
  const auto composites = findComposites!(swaggerize.test.handlers.basic);

  assert(composites["/test"][OperationsType.get] == &swaggerize.test.handlers.basic.testGet);
}
