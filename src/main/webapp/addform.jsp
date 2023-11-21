<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원추가 - 실전프로젝트 회원관리 V1</title>
  <link rel="stylesheet" href="member.css">
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous"
  />
  <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
          crossorigin="anonymous"
  ></script>
</head>
<body>
  <div class="container" style="width:600px">
      <div class="h2_title">
        <h2>신규 회원 추가</h2>
      </div>
  <form class="row g-3" action="add_ok.jsp" method="post" enctype="multipart/form-data">
    <div class="col-md-12">
      <label for="UserID" class="form-label">User ID</label>
      <input
              type="text"
              class="form-control"
              id="UserID"
              name="userid"
      />
    </div>
    <div class="col-md-12">
      <label for="Name" class="form-label">Name</label>
      <input
              type="text"
              class="form-control"
              id="Name"
              name="username"
      />
    </div>
    <div class="col-md-12">
      <label for="Photo" class="form-label">Photo</label>
      <input
              type="file"
              class="form-control"
              id="Photo"
              name="photo"
      />
    </div>
    <div class="col-md-12">
      <label for="Email" class="form-label">Email</label>
      <input
              type="email"
              class="form-control"
              id="Email"
              name="email"
      />
    </div>
    <div class="col-md-12">
      <label for="Detail" class="form-label">Detail</label>
      <textarea
              class="form-control"
              id="Detail"
              name="detail"
      ></textarea>
    </div>
    <button class="btn btn-primary" type="submit">회원 추가</button>
    <button class="btn btn-primary" type="button" onclick="location.href='list.jsp'">목록 보기</button>
  </form>
  </div>
</body>
</html>
