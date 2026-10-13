#include <boost/python.hpp>
using namespace boost::python;

#include <PLtoPSTest.hpp>

BOOST_PYTHON_MODULE(PLtoPSTest)
{
  class_<PLtoPSTest>("PLtoPSTest", init<unsigned int>());
}