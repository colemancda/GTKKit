#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKContainer.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKBin: GTKContainer
- (GTKWidget*)childWidget;
@end

OF_ASSUME_NONNULL_END
