[#ftl]
[@b.head/]
[@b.grid items=lectures var="lecture"]
  [@b.gridbar]
    bar.addItem("${b.text("action.new")}",action.add());
    bar.addItem("${b.text("action.modify")}",action.edit());
    bar.addItem("${b.text("action.delete")}",action.remove("确认删除?"));
  [/@]
  [@b.row]
    [@b.boxcol /]
    [@b.col width="10%" property="date" title="日期"]${(lecture.date?string('yyyy-MM-dd'))?default('')}[/@]
    [@b.col width="10%" title="时间"]${lecture.beginAt! }-${lecture.endAt }[/@]
    [@b.col width="15%" property="subject" title="活动名称（类别）"/]
    [@b.col width="10%" property="depart.name" title="开课院系"/]
    [@b.col width="10%" property="room.name" title="教室"/]
    [@b.col width="10%" property="location" title="地点"/]
    [@b.col width="10%" property="teachers" title="组织教师"/]
    [@b.col width="5%" property="capacity" title="最大容量"/]
    [@b.col width="5%" property="actual" title="实际学生"][@b.a href="!audiences?id=${lecture.id}"]${lecture.actual}[/@][/@]
    [@b.col width="10%" property="semester" title="学年学期"]${(lecture.semester.schoolYear)!}学年${(lecture.semester.name?replace('0','第'))!}学期[/@]
  [/@]
[/@]
[@b.foot/]