//
//  CoreDataHelper.h
//  RoadTripChubby
//
//  Created by Eric McConkie on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>



typedef void (^OnSave)(BOOL success);

@interface CoreDataHelper : NSObject
//coredata
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain) NSString *dbName;

/*
 // instance methods of object lifecycle     
 */

/*
 // removes the NSManagedObject from the data store
 */
-(void)destroy:(NSManagedObject *)managedObject;

/*
 // get all NSManagedObjects of "entityName"
 */
-(NSArray*)fetchAll:(NSString *)entityName;

/*
 // return array of objects that match the entity name and dictionary values
 */
//-(NSArray*)fetchBy:(NSDictionary *)keyvalueDictionary entity:(NSString*)entityName;

/*
 // save current context of a core data state
 */
- (void)saveContext;

/*
 // save current context of core data state; 
 // block returns  success boolean of the save
 */
-(void)saveWithBlock:(OnSave)block;

/*
 // convenience creater for an entity by EntityName
 // adds to store immediately 
 */
-(NSManagedObject*)newEntity:(NSString*)entityName persistedToStore:(BOOL)persistedToStore;

- (void) deleteAllObjects: (NSString *) entityDescription;//drop table

//helper methods
- (NSURL *)applicationDocumentsDirectory;

/*
 //class method     
 */
+(CoreDataHelper*)sharedHelper;
@end
