/* Copyright (C) 2010 Easy for TrinityCore <http://trinity-core.ru/>
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
*/

#include "ScriptPCH.h"

enum ActNpcRename
{
    ACT_RENAME                	= 1001,
    ACT_CUSTOMIZE             	= 1002,
    ACT_CUSTOMIZE_RACE             	= 1003,	
    ACT_CUSTOMIZE_FACTION        	= 1004,	
    ACT_CONFIRM_RENAME        	= 1005,
    ACT_CONFIRM_CUSTOMIZE     	= 1006,
    ACT_CONFIRM_CUSTOMIZE_RACE     	= 1007,	
    ACT_CONFIRM_CUSTOMIZE_FACTION	= 1008
};

#define PRISE_RENAME_CHAR_AP    100000000
#define PRISE_CUSTOMIZE_CHAR_AP 25000000
#define PRISE_CUSTOMIZE_RACE_CHAR_AP 1000000000
#define PRISE_CUSTOMIZE_FACTION_CHAR_AP 2000000000

#define GOSSIP_RENAME_HELLO "我想改变我的角色名字。"
#define GOSSIP_CUSTOMIZE_HELLO "我想改变我的外观。"
#define GOSSIP_CUSTOMIZE_RACE_HELLO "我想改变我的种族。"
#define GOSSIP_CUSTOMIZE_FACTION_HELLO "我想改变我的阵营。"
#define GOSSIP_RENAME_CONFIRM "更改角色名需要1W金，你确定吗？"
#define GOSSIP_CUSTOMIZE_CONFIRM "更改外观需要2500金，你确定吗？"
#define GOSSIP_CUSTOMIZE_FACTION_RACE "更改种族需要10W金，你确定吗？"
#define GOSSIP_CUSTOMIZE_FACTION_CONFIRM "更换阵营需要20W金，你确定吗？"


#define MSG_NOT_MONEY_FOR_RENAME "您没有足够的黄金!"
#define MSG_COMPLETE_RENAME "在下次登录时，你会被提示输入一个新名字!"
#define MSG_COMPLETE_CUSTOMIZE "在下次登录时，系统会提示您更改您的名字和外观!"
#define MSG_COMPLETE_RACE_CUSTOMIZE "在下次登录时，你会被提示您更改种族!"
#define MSG_COMPLETE_FACTION_CUSTOMIZE "在下次登录时，系统会提示您更改您的阵营!"

class npc_customize : public CreatureScript
{
public:
    npc_customize() : CreatureScript("npc_customize") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_RENAME_HELLO, GOSSIP_SENDER_MAIN, ACT_RENAME);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CUSTOMIZE_HELLO, GOSSIP_SENDER_MAIN, ACT_CUSTOMIZE);
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CUSTOMIZE_RACE_HELLO, GOSSIP_SENDER_MAIN, ACT_CUSTOMIZE_RACE);			
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CUSTOMIZE_FACTION_HELLO, GOSSIP_SENDER_MAIN, ACT_CUSTOMIZE_FACTION);		
        pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
        if (uiSender != GOSSIP_SENDER_MAIN)
            return false;

        pPlayer->PlayerTalkClass->ClearMenus();

        switch (uiAction)
        {
        case ACT_RENAME:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_RENAME_CONFIRM, GOSSIP_SENDER_MAIN, ACT_CONFIRM_RENAME);
            pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
            break;
        case ACT_CUSTOMIZE:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CUSTOMIZE_CONFIRM, GOSSIP_SENDER_MAIN, ACT_CONFIRM_CUSTOMIZE);
            pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
            break;
        case ACT_CUSTOMIZE_RACE:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CUSTOMIZE_FACTION_RACE, GOSSIP_SENDER_MAIN, ACT_CONFIRM_CUSTOMIZE_RACE);
            pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
            break;				
        case ACT_CUSTOMIZE_FACTION:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CUSTOMIZE_FACTION_CONFIRM, GOSSIP_SENDER_MAIN, ACT_CONFIRM_CUSTOMIZE_FACTION);
            pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
            break;			
        case ACT_CONFIRM_RENAME:
            if (pPlayer->GetMoney() < PRISE_RENAME_CHAR_AP)
            {
                pCreature->MonsterWhisper(MSG_NOT_MONEY_FOR_RENAME, pPlayer->GetGUID());
            }else{
                pCreature->MonsterWhisper(MSG_COMPLETE_RENAME, pPlayer->GetGUID());
                pPlayer->ModifyMoney(-PRISE_RENAME_CHAR_AP);
                pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
            }
            pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case ACT_CONFIRM_CUSTOMIZE:
            if (pPlayer->GetMoney() < PRISE_CUSTOMIZE_CHAR_AP)
            {
                pCreature->MonsterWhisper(MSG_NOT_MONEY_FOR_RENAME, pPlayer->GetGUID());
            }else{
                pCreature->MonsterWhisper(MSG_COMPLETE_CUSTOMIZE, pPlayer->GetGUID());
                pPlayer->ModifyMoney(-PRISE_CUSTOMIZE_CHAR_AP);
                pPlayer->SetAtLoginFlag(AT_LOGIN_CUSTOMIZE);
            }
            pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case ACT_CONFIRM_CUSTOMIZE_RACE:
            if (pPlayer->GetMoney() < PRISE_CUSTOMIZE_RACE_CHAR_AP)
            {
                pCreature->MonsterWhisper(MSG_NOT_MONEY_FOR_RENAME, pPlayer->GetGUID());
            }else{
                pCreature->MonsterWhisper(MSG_COMPLETE_RACE_CUSTOMIZE, pPlayer->GetGUID());
                pPlayer->ModifyMoney(-PRISE_CUSTOMIZE_RACE_CHAR_AP);
                pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
            }
            pPlayer->CLOSE_GOSSIP_MENU();
            break;				
        case ACT_CONFIRM_CUSTOMIZE_FACTION:
            if (pPlayer->GetMoney() < PRISE_CUSTOMIZE_FACTION_CHAR_AP)
            {
                pCreature->MonsterWhisper(MSG_NOT_MONEY_FOR_RENAME, pPlayer->GetGUID());
            }else{
                pCreature->MonsterWhisper(MSG_COMPLETE_FACTION_CUSTOMIZE, pPlayer->GetGUID());
                pPlayer->ModifyMoney(-PRISE_CUSTOMIZE_FACTION_CHAR_AP);
                pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
            }
            pPlayer->CLOSE_GOSSIP_MENU();
            break;			
        default:
            pPlayer->CLOSE_GOSSIP_MENU();
        }
        return true;
    }
};

void AddSC_npc_customize()
{
    new npc_customize;
}