<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

var pro_no = ${data.pu_riskpolicy_pro_no};
var memCode = ${data.pu_riskpolicy_mem_code};
this.window.location.replace("/project_up/project_up/funding_step5?pro_no=" + pro_no +"&memCode=" + memCode);

</script>