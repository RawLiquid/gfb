/*
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Copyright 2010 Guilherme Barros
*/


void WebOutputTemps(Client client)
{
  client.print("T1:");
  client.print(T1temp);
  client.println("<br />");
  client.print("T2:");
  client.print(T2temp);
  client.println("<br />");
  client.print("T3:");
  client.print(T3temp);
  client.println("<br />");
  client.print("T4:");
  client.print(T4temp);
  client.println("<br />");  
  client.print("T5:");
  client.print(T5temp);
  client.println("<br />");
  client.print("T6:");
  client.print(T6temp);
  client.println("<br />"); 
  client.print("T7:");
  client.print(T7temp);
  client.println("<br />");
  client.print("T8:");
  client.print(T8temp);
  client.println("<br />");
  client.print("T9:");
  client.print(T9temp);
  client.println("<br />");
  client.print("T10:");
  client.print(T10temp);
  client.println("<br />");
  client.print("HVAC:");
  client.print(hvacVal);
  client.println("<br />");  
}


void lcd4TempUpdate()
{
  Serial.println("in lcd4TempUpdate");
  //line 1
  lcd.at(1,1, "Here:");
  if (sensorsA.isConnected(T6))
    lcd.at(1,6, T6tempS);
  else
    lcd.at(1,6, "---- ");
 
  lcd.at(1,11, "Util:");
  if (sensorsA.isConnected(T5))
    lcd.at(1,16, T5tempS);
  else
    lcd.at(1,16, "---- ");
    
  //line 2
  lcd.at(2,1, "MBed:");
  if (sensorsB.isConnected(T3))
    lcd.at(2,6, T3tempS);
  else
    lcd.at(2,6, "---- ");
 
  lcd.at(2,11, "Grge:");
  if (sensorsA.isConnected(T9))
    lcd.at(2,16, T9tempS);
  else
    lcd.at(2,16, "---- ");
    
  //line 3
  lcd.at(3,1, "Kitc:");
  if (sensorsA.isConnected(T8))
    lcd.at(3,6, T8tempS);
  else
    lcd.at(3,6, "---- ");
 
  lcd.at(3,11, "Bsmt:");
  if (sensorsB.isConnected(T2))
    lcd.at(3,16, T2tempS);
  else
    lcd.at(3,16, "---- ");
        
  //line 4
  lcd.at(4,1, "Attc:");
  if (sensorsB.isConnected(T1))
    lcd.at(4,6, T1tempS);
  else
    lcd.at(4,6, "---- ");
    
  lcd.at(4,11, "Out:");
  if (sensorsB.isConnected(T7))
    lcd.at(4,16, T7tempS);
  else
    lcd.at(4,16, "---- ");
}

