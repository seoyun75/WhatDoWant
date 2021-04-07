<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

var pro_no = ${data.get(0).pu_reward_dsn_pro_no};
var memCode = ${data.get(0).pu_reward_dsn_mem_code};
this.window.location.replace("/project_up/project_up/funding_step4?pro_no=" + pro_no +"&memCode=" + memCode);

</script>