# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotino_msgs/DistrCenter.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class DistrCenter(genpy.Message):
  _md5sum = "9922e6e657a68d27d810667d48393520"
  _type = "robotino_msgs/DistrCenter"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Pose2D mapPose
geometry_msgs/Pose2D goalPose
int32 puck1
int32 puck2
bool isActive


================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta"""
  __slots__ = ['mapPose','goalPose','puck1','puck2','isActive']
  _slot_types = ['geometry_msgs/Pose2D','geometry_msgs/Pose2D','int32','int32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mapPose,goalPose,puck1,puck2,isActive

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DistrCenter, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.mapPose is None:
        self.mapPose = geometry_msgs.msg.Pose2D()
      if self.goalPose is None:
        self.goalPose = geometry_msgs.msg.Pose2D()
      if self.puck1 is None:
        self.puck1 = 0
      if self.puck2 is None:
        self.puck2 = 0
      if self.isActive is None:
        self.isActive = False
    else:
      self.mapPose = geometry_msgs.msg.Pose2D()
      self.goalPose = geometry_msgs.msg.Pose2D()
      self.puck1 = 0
      self.puck2 = 0
      self.isActive = False

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
      buff.write(_get_struct_6d2iB().pack(_x.mapPose.x, _x.mapPose.y, _x.mapPose.theta, _x.goalPose.x, _x.goalPose.y, _x.goalPose.theta, _x.puck1, _x.puck2, _x.isActive))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.mapPose is None:
        self.mapPose = geometry_msgs.msg.Pose2D()
      if self.goalPose is None:
        self.goalPose = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.mapPose.x, _x.mapPose.y, _x.mapPose.theta, _x.goalPose.x, _x.goalPose.y, _x.goalPose.theta, _x.puck1, _x.puck2, _x.isActive,) = _get_struct_6d2iB().unpack(str[start:end])
      self.isActive = bool(self.isActive)
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
      buff.write(_get_struct_6d2iB().pack(_x.mapPose.x, _x.mapPose.y, _x.mapPose.theta, _x.goalPose.x, _x.goalPose.y, _x.goalPose.theta, _x.puck1, _x.puck2, _x.isActive))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.mapPose is None:
        self.mapPose = geometry_msgs.msg.Pose2D()
      if self.goalPose is None:
        self.goalPose = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.mapPose.x, _x.mapPose.y, _x.mapPose.theta, _x.goalPose.x, _x.goalPose.y, _x.goalPose.theta, _x.puck1, _x.puck2, _x.isActive,) = _get_struct_6d2iB().unpack(str[start:end])
      self.isActive = bool(self.isActive)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d2iB = None
def _get_struct_6d2iB():
    global _struct_6d2iB
    if _struct_6d2iB is None:
        _struct_6d2iB = struct.Struct("<6d2iB")
    return _struct_6d2iB