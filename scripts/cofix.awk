{ 
  sub(/\<\/example\>\<calloutlist\>/, "<calloutlist>"); 
  sub(/\<\/calloutlist\>/, "</calloutlist></example>"); 
  print 
}