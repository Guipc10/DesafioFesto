# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotino_msgs/PuckInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class PuckInfo(genpy.Message):
  _md5sum = "522af20247389e6ad2ff7441c7cbfe87"
  _type = "robotino_msgs/PuckInfo"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 color
geometry_msgs/Pose2D centroid

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta"""
  __slots__ = ['color','centroid']
  _slot_types = ['uint32','geometry_msgs/Pose2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       color,centroid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PuckInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.color is None:
        self.color = 0
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Pose2D()
    else:
      self.color = 0
      self.centroid = geometry_msgs.msg.Pose2D()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_I3d().pack(_x.color, _x.centroid.x, _x.centroid.y, _x.centroid.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 28
      (_x.color, _x.centroid.x, _x.centroid.y, _x.centroid.theta,) = _get_struct_I3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_I3d().pack(_x.color, _x.centroid.x, _x.centroid.y, _x.centroid.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 28
      (_x.color, _x.centroid.x, _x.centroid.y, _x.centroid.theta,) = _get_struct_I3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I3d = None
def _get_struct_I3d():
    global _struct_I3d
    if _struct_I3d is None:
        _struct_I3d = struct.Struct("<I3d")
    return _struct_I3d
