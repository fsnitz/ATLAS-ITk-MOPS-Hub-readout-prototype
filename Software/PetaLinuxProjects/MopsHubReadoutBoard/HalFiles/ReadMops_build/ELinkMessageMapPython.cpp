#include <boost/python.hpp>
using namespace boost::python;

#include <ELinkMessageMap.hpp>

BOOST_PYTHON_MODULE(ELinkMessageMap)
{
  class_<ELinkMessageMap>("ELinkMessageMap", init<unsigned int>());
}