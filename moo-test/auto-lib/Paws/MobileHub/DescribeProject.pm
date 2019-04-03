
package Paws::MobileHub::DescribeProject;
  use Moose;
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectId', required => 1);
  has SyncFromResources => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'syncFromResources');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/project');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::DescribeProjectResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DescribeProject - Arguments for method DescribeProject on L<Paws::MobileHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProject on the
L<AWS Mobile|Paws::MobileHub> service. Use the attributes of this class
as arguments to method DescribeProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProject.

=head1 SYNOPSIS

    my $mobile = Paws->service('MobileHub');
    my $DescribeProjectResult = $mobile->DescribeProject(
      ProjectId         => 'MyProjectId',
      SyncFromResources => 1,               # OPTIONAL
    );

    # Results:
    my $Details = $DescribeProjectResult->Details;

    # Returns a L<Paws::MobileHub::DescribeProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mobile/DescribeProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectId => Str

Unique project identifier.



=head2 SyncFromResources => Bool

If set to true, causes AWS Mobile Hub to synchronize information from
other services, e.g., update state of AWS CloudFormation stacks in the
AWS Mobile Hub project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProject in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

