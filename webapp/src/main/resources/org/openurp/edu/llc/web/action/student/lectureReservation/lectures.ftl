[#ftl]
[@b.head/]
[@b.toolbar title="可选课堂活动"/]
[#if lectures?? && lectures?size>0]
  [@b.grid items=lectures?sort_by("date") var="lecture"  sortable="false"]
    [@b.row]
      [@b.col width="5%" title="序号"]${lecture_index+1 }[/@]
      [@b.col width="10%" property="date" title="日期"]${(lecture.date?string('yyyy-MM-dd'))?default('')}[/@]
      [@b.col width="10%" title="时间"]${lecture.beginAt! }-${lecture.endAt }[/@]
      [@b.col width="15%" property="subject" title="活动名称（类别）"/]
      [@b.col width="20%" property="location" title="地点"]${(lecture.room.name)!} ${lecture.location! }[/@]
      [@b.col width="10%" property="teachers" title="组织教师"/]
      [@b.col width="10%" property="capacity" title="最大容量"/]
      [@b.col width="10%" title="已选人数"]${(lecture.audiences.size)! }[/@]
      [@b.col width="10%" title="操作"][#if !chooseLectures?seq_contains(lecture)][@b.a href="!choose?lecture.id=${lecture.id}"]选择[/@][#else]已选择[/#if][/@]
    [/@]
  [/@]
[#else]目前没有可选课堂活动
[/#if]
[@b.foot/]
