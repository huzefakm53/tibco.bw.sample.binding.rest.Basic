package com.javatest.bwjunittest;

import java.net.URL;

import javax.jms.JMSException;
import javax.jms.MapMessage;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueReceiver;
import javax.jms.QueueSender;
import javax.jms.QueueSession;
import javax.jms.Session;
//import javax.jms.TextMessage;



import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Before;
import org.junit.Test;



import com.tibco.tibjms.TibjmsQueueConnectionFactory;
import com.tibco.tibjms.TibjmsTopic;


public class JmsApp 
{

private static Log log = LogFactory.getLog(JmsApp.class);


@Test
public void testSendMessage() throws Exception {
TibjmsQueueConnectionFactory factory = null;
QueueSession session = null;
QueueConnection cn = null;

try {
//TibjmsTopic topic = new TibjmsTopic("qa.bgem.prices.trading_pub.trans.cbo.topic");
factory = new TibjmsQueueConnectionFactory();

factory.setServerUrl("tcp://localhost:7222");
factory.setUserName("admin");


cn = factory.createQueueConnection();
//must call start to start delivery of incoming message!
cn.start();

session = cn.createQueueSession(false, Session.AUTO_ACKNOWLEDGE);

Queue queue = session.createQueue("queue.sample");
QueueSender sender = session.createSender(queue);

//TextMessage msg = session.createTextMessage("test msg");
MapMessage msg = session.createMapMessage();
msg.setString("ReplyMsg", "test msg");
msg.setBoolean("Boolean_Element", true);
msg.setDouble("Double_Element", 2.2);
msg.setFloat("Float_Element", 1);
msg.setInt("Int_Element", 1);

sender.send(msg);

} catch (Exception ex) {
ex.printStackTrace();
throw ex;
} finally {
session.close();
cn.close();
factory = null;
}
}


/*
@Test
public void testReadMessage() throws JMSException {
	
	TibjmsQueueConnectionFactory factory = null;
	QueueSession session = null;
	QueueConnection cn = null;
	
	try{
	factory = new TibjmsQueueConnectionFactory();

	factory.setServerUrl("tcp://localhost:7222");
	factory.setUserName("admin");


	cn = factory.createQueueConnection();
	//must call start to start delivery of incoming message!
	cn.start();
	session = cn.createQueueSession(false, Session.AUTO_ACKNOWLEDGE);

	Queue queue = session.createQueue("queue.sample");
	QueueReceiver receiver = session.createReceiver(queue);

	
	while(true){
	TextMessage receivedMsg = (TextMessage)receiver.receive();
	if(receivedMsg != null){
	log.info(receivedMsg.getText());
	break;
	}
	}
	} catch (Exception ex) {
		ex.printStackTrace();
		throw ex;
		} finally {
		session.close();
		cn.close();
		factory = null;
		}
		
}
*/
}
