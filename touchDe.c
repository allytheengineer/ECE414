/* 
 * File:   touchDe.c
 * Author: damatoj
 *
 * Created on October 26, 2021, 3:31 PM
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
static enum D_States{T_N,T_MP,T_P,T_MNP} T_State;
int8_t touchDe(int8_t btn){
    
    switch(T_State){
        
        case T_N:
            if(btn){
            T_State=T_MP;   
            }
            else 
                T_State=T_N;
            break;
        case T_MP:
            if(btn){
                T_State=T_P;
            }
            else
                T_State=T_N;
            break;
        case T_P:
            if(!btn){
                T_State=T_MNP;
            }
            else T_State=T_P;
            break;
        case T_MNP:
            if(!btn){
                T_State=T_N;
            }
            else T_State=T_P;
            break;
        switch(T_State){
            case T_N:
                return 0;
            break;
            case T_MP:
                return 0;
                break;
            case T_P:
                return 1;
                break;
            case T_MNP:
                return 1;
                break;
            
            
        }    
    }  
}
