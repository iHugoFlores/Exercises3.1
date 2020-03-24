//
//  ButtonsViewController.m
//  ImagesAndButtonsObjC
//
//  Created by Field Employee on 3/24/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ButtonsViewController.h"

@interface ButtonsViewController ()

@end

@implementation ButtonsViewController

    int cellHeight = 180;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return cellHeight;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"button_cell" forIndexPath:indexPath];
    
    NSArray *imgRes = @[@"Lain", @"LainBear", @"Navi", @"OtherLain"];

    uint32_t rnd = arc4random_uniform([imgRes count]);
    NSString* imsSelected = [imgRes objectAtIndex:rnd];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(8,8,self.view.frame.size.width - 16, cellHeight - 16);
    //[button.titleLabel setFont:[UIFont fontWithName:@"Zapfino" size:20.0]];
    //[button.titleLabel setTextColor:[UIColor blueColor]];
    btn.backgroundColor = [self getRandomColor];
    [btn setTitle: imsSelected forState: UIControlStateNormal];
    
    btn.tag = indexPath.row;
    
    UIImage *btnImage = [UIImage imageNamed: imsSelected];
    [btn setImage:btnImage forState:UIControlStateNormal];
    btn.imageEdgeInsets = UIEdgeInsetsMake(25, 35, 25, 25);
    btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [cell.contentView addSubview:btn];
    
    return cell;
}

- (void)buttonTapped:(UIButton *)sender {
    NSInteger buttonRow = sender.tag;
    NSString *title = [NSString stringWithFormat:@"Hello World: %ld", (long)buttonRow];
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
    message:@"This is an alert."
    preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
    handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (UIColor *) getRandomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
