//
//  main.c
//  demo.c
//
//  Created by kapon2016 on 16/3/19.
//  Copyright © 2016年 kapon2016. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct Node{
    int vote_count;
    char* name;
    struct Node* next;
};
typedef struct Node Candi;

void NodeInit(Candi* p);

int main(int argc, const char * argv[]) {
    // insert code here...
    char command[15];
    char* temp_name = (char*)malloc(10);
    int invalid = 0;
    Candi *p1 = (Candi*)malloc(sizeof(Candi));
    Candi *p2 = (Candi*)malloc(sizeof(Candi));
    NodeInit(p1);
    NodeInit(p2);
    
    Candi* phead = p1;
    
    scanf("%s", command);
    while(!strcmp(command,"addCandidate")){
        scanf("%s", p1->name);
        p1->next = p2;
        p1 = p2;
        p2 = (Candi*)malloc(sizeof(Candi));
        NodeInit(p2);
        
        scanf("%s", command);
    }
    
    free(p1);
    free(p2);
    
    //begin to do statistics
    while (!strcmp(command, "vote")) {
        scanf("%s", temp_name);
        p1 = phead;
        while((p1->next != NULL) && (strcmp(temp_name, p1->name)))
            p1 = p1->next;
        if((p1->next == NULL) && (strcmp(p1->name, temp_name))){
            invalid++;
            continue;
        }
        p1->vote_count++;
        
        scanf("%s", command);
    }
    
    if (strcmp(command, "getVoteResult")) {
        p1 = phead;
        while(p1->next){
            printf("%s %d", p1->name, p1->vote_count);
        }
        printf("%s %d", p1->name, p1->vote_count);
        printf("%d", invalid);
    }
    
    return 0;
}

void NodeInit(Candi* p){
    p->vote_count = 0;
    p->name = (char*)malloc(10);
    p->next = NULL;
}
