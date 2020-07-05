//
//  ViewController.m
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import "ViewController.h"
#import "ListCell.h"
#import "CustomImageFlowLayout.h"
#import "CollectionCell.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize videoLabel;
@synthesize reviewLabel;
@synthesize horizontalView;
@synthesize verticalView;
@synthesize editButton;
@synthesize messageButton;
@synthesize callButton;
@synthesize moreButton;
@synthesize listTableview;
@synthesize videoCollectionView;
@synthesize collectionviewHorizontalFlowLayout;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    collectionviewHorizontalFlowLayout.collectionViewLayout = [[CustomImageFlowLayout alloc] init];
    collectionviewHorizontalFlowLayout.backgroundColor = [UIColor clearColor];
    
    [self.collectionviewHorizontalFlowLayout setDataSource:self];
    [self.collectionviewHorizontalFlowLayout setDelegate:self];
    
    UINib *cellNib = [UINib nibWithNibName:@"CollectionCell" bundle:nil];
    [collectionviewHorizontalFlowLayout registerNib:cellNib forCellWithReuseIdentifier:@"CollectionCell"];
    
    [self.listTableview setDataSource:self];
    [self.listTableview setDelegate:self];
    
    UINib *nib = [UINib nibWithNibName:@"ListCell" bundle:nil];
    [[self listTableview] registerNib:nib forCellReuseIdentifier:@"ListCell"];
    
    UIImage* image = [UIImage imageNamed:@"Share"];
    CGRect frameimg = CGRectMake(15,5, 25,25);
    
    UIButton *shareButton = [[UIButton alloc] initWithFrame:frameimg];
    [shareButton setBackgroundImage:image forState:UIControlStateNormal];
    [shareButton addTarget:self action:@selector(Share_btn:)
         forControlEvents:UIControlEventTouchUpInside];
    [shareButton setShowsTouchWhenHighlighted:YES];
    
    UIImage* image1 = [UIImage imageNamed:@"Search"];
    CGRect frameimg1 = CGRectMake(15,5, 25,25);
    
    UIButton *searchButton = [[UIButton alloc] initWithFrame:frameimg1];
    [searchButton setBackgroundImage:image1 forState:UIControlStateNormal];
    [searchButton addTarget:self action:@selector(Search_btn:)
         forControlEvents:UIControlEventTouchUpInside];
    [searchButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:shareButton];
    UIBarButtonItem *mailbutton1 =[[UIBarButtonItem alloc] initWithCustomView:searchButton];

    
    self.navigationItem.rightBarButtonItems=@[mailbutton,mailbutton1];
    
    messageButton.layer.cornerRadius = 10.0f;
    messageButton.layer.masksToBounds = YES;
    
    [videoLabel setFont:[UIFont fontWithName:@"Avenir" size:17.0]];
    [reviewLabel setFont:[UIFont fontWithName:@"Avenir" size:17.0]];
    
}


-(IBAction)Share_btn:(id)sender
{
    //Your code here
    NSLog(@"Print");
}

-(IBAction)Search_btn:(id)sender
{
    //Your code here
    NSLog(@"Print");
}

//UICollectionView Data Source Methods
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return  1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell = (CollectionCell *)[self.collectionviewHorizontalFlowLayout dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    //cell.img.image = [UIImage imageNamed:@"No_image"];
    cell.nameLabel.text = @"Bluebuild China 2018";
    cell.weekLabel.text = @"1 Week ago";
    cell.playLabel.text = @"2,838Play";
    
    [cell.nameLabel setFont:[UIFont fontWithName:@"Avenir" size:17.0]];
    [cell.weekLabel setFont:[UIFont fontWithName:@"Avenir" size:14.0]];
    [cell.playLabel setFont:[UIFont fontWithName:@"Avenir" size:14.0]];
    
    return cell;
}

//UICollectionView Delegate Method
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"the clicked indexPath.row is - %ld",(long)indexPath.row);
}


#pragma mark Collection view layout things
// Layout: Set cell size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGSize mElementSize = CGSizeMake(300, 185);
    return mElementSize;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 2.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 2.0;
}

// Layout: Set Edges
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    // return UIEdgeInsetsMake(0,8,0,8);  // top, left, bottom, right
    return UIEdgeInsetsMake(0,0,0,0);  // top, left, bottom, right
}

//UITableView Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListCell *cell = (ListCell *)[listTableview dequeueReusableCellWithIdentifier:@"ListCell"];
    [cell.listDescriptionLabel setText:@"Is there a way to make all items in a collection view fit in one row and scroll horizontally? I want to automatically place items in an another row."];
    [cell.timeLabel setText:@"5 minutes"];
    [cell.yearLabel setText:@"2 years ago"];
    
    [cell.listDescriptionLabel setFont:[UIFont fontWithName:@"Avenir" size:12.0]];
    [cell.timeLabel setFont:[UIFont fontWithName:@"Avenir" size:12.0]];
    [cell.yearLabel setFont:[UIFont fontWithName:@"Avenir" size:12.0]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSString* cellText;  // code to load cellText dynamically is snipped off
//    UIFont *cellFont = [UIFont fontWithName:@"Georgia" size:14.0];
//    CGSize constraintSize = CGSizeMake(230.0f, MAXFLOAT);
//    CGSize labelSize = [cellText sizeWithFont:cellFont constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
    
    return 100;//labelSize.height + 20;
}


@end
