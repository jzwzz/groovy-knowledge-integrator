<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main" />
  </head>

  <body>
    <div class="row">
      <!-- Sidebar -->
      <div class="col-sm-3">
        <!-- -->
        <div id="datetimepickerInline"></div>

        <!-- -->
        <div class="row">
          <div class="col-sm-5">
            <span class="glyphicon glyphicon-time"></span>
            Time
          </div>
          <div class="col-sm-7" id="currentTime" style="text-align: center;">
            00/00 00:00:00
          </div>
        </div>
        <div class="row">&nbsp;</div>

        <!-- -->
        <div class="row">
          <div class="col-sm-5">
            <span class="glyphicon glyphicon-user"></span>
            Your Name
          </div>
          <div class="col-sm-7">
            <input type="text" id="userName" class="form-control" 
                   placeholder="Set your name here..." required>
            </input>
          </div>
        </div>

        <!--
        <div class="row">
          <div class="col-sm-5">
            <span class="glyphicon glyphicon-share"></span>
            Send To
          </div>
          <div class="col-sm-7" id="sendTo">
            <select class="form-control">
              <g:each in="${gki.chat.ChatRoom.list()}" var="room">
                <option value="${room.id}">${room.name}</option>
              </g:each>
            </select>
          </div>
        </div>
        -->

        <!-- -->
        <div class="row">
          <div class="col-sm-12">
            <span class="glyphicon glyphicon-edit"></span>
            Chat Message
          </div>
        </div>

        <!-- -->
        <div class="row">
          <div class="col-sm-12">
            <input type="text" id="chatMessage" class="form-control" 
                   placeholder="Input chat message..." autofocus>
            </input>
          </div>
        </div>
        <div class="row">&nbsp;</div>

        <!-- -->
        <div class="row">
          <div class="col-sm-12">
            <span class="glyphicon glyphicon-th-list"></span>
            Connected Users
          </div>
        </div>

        <!-- -->
        <div class="row" id="connectedUsersTable"
             style="height: 330px; overflow: scroll;">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>ID</th>
                <th>User Name</th>
              </tr>
            </thead>
            <tbody>
              <g:each in="${gki.chat.ChatUser.list()}" var="user">
                <tr>
                  <td style="width: 4em;">${user.id}</td>
                  <td>${user.username}</td>
                </tr>
              </g:each>
            </tbody>
          </table>
        </div>
      </div>

      <!-- Chat Area -->
      <div class="col-sm-9">
        <div class="row">
          <form class="form-inline">
            <div class="form-group">
              <label for="chatRoomSelected">Chat Room</label>
              <select class="form-control" id="chatRoomSelected">
                <g:each in="${gki.chat.ChatRoom.list()}" var="room">
                  <option value="${room.id}">${room.name}</option>
                </g:each>
              </select>
              &nbsp;
              <span id="wsstatus" class="label label-danger">OffLine</span>
            </div>
          </form>
        </div>
        <div class="row">
          <div id="area01" style="height: 800px; background-color: #eeeeee;">
          </div>
        </div>
      </div>
    </div>
    
  </body>
</html>