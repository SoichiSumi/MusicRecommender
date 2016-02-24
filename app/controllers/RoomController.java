package controllers;

import models.Account;
import models.NowRoom;
import models.Room;
import play.mvc.Controller;
import play.mvc.Result;

import com.avaje.ebean.ExpressionList;

public class RoomController extends Controller{
	public Result createRoom(String roomName, Long userID){
		ExpressionList<NowRoom> results = NowRoom.find.where().eq("roomName", roomName);
    	if(results != null){
    		return badRequest();
    	}
    	Room roomTmp=new Room(0L, roomName);
    	roomTmp.save();
    	NowRoom nowRoomTmp=new NowRoom(roomTmp.room_id, roomName);
    	nowRoomTmp.save();
    	Account accountTmp = Account.find.byId(userID);
    	if(accountTmp==null)
    		return internalServerError("userId is missing when creating room");

    	accountTmp.roomId=roomTmp.room_id;
    	accountTmp.update();

        return ok();
	}
}