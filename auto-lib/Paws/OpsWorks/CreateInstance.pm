
package Paws::OpsWorks::CreateInstance {
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Os => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateInstance - Arguments for method CreateInstance on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstance on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method CreateInstance.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstance.

As an example:

  $service_obj->CreateInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AmiId => Str

  

A custom AMI ID to be used to create the instance. The AMI should be
based on one of the standard AWS OpsWorks APIs: Amazon Linux or Ubuntu
12.04 LTS. For more information, see Instances










=head2 Architecture => Str

  

The instance architecture. The default option is C<x86_64>. Instance
types do not necessarily support both architectures. For a list of the
architectures that are supported by the different instance types, see
Instance Families and Types.










=head2 AutoScalingType => Str

  

The instance auto scaling type, which has three possible values:

=over

=item * B<AlwaysRunning>: A 24/7 instance, which is not affected by
auto scaling.

=item * B<TimeBasedAutoScaling>: A time-based auto scaling instance,
which is started and stopped based on a specified schedule. To specify
the schedule, call SetTimeBasedAutoScaling.

=item * B<LoadBasedAutoScaling>: A load-based auto scaling instance,
which is started and stopped based on load metrics. To use load-based
auto scaling, you must enable it for the instance layer and configure
the thresholds by calling SetLoadBasedAutoScaling.

=back










=head2 AvailabilityZone => Str

  

The instance Availability Zone. For more information, see Regions and
Endpoints.










=head2 EbsOptimized => Bool

  

Whether to create an Amazon EBS-optimized instance.










=head2 Hostname => Str

  

The instance host name.










=head2 InstallUpdatesOnBoot => Bool

  

Whether to install operating system and package updates when the
instance boots. The default value is C<true>. To control when updates
are installed, set this value to C<false>. You must then update your
instances manually by using CreateDeployment to run the
C<update_dependencies> stack command or manually running C<yum> (Amazon
Linux) or C<apt-get> (Ubuntu) on the instances.










=head2 B<REQUIRED> InstanceType => Str

  

The instance type. AWS OpsWorks supports all instance types except
Cluster Compute, Cluster GPU, and High Memory Cluster. For more
information, see Instance Families and Types. The parameter values that
you use to specify the various types are in the API Name column of the
Available Instance Types table.










=head2 B<REQUIRED> LayerIds => ArrayRef[Str]

  

An array that contains the instance layer IDs.










=head2 Os => Str

  

The instance operating system, which must be set to one of the
following.

=over

=item * Standard operating systems: C<Amazon Linux> or C<Ubuntu 12.04
LTS>

=item * Custom AMIs: C<Custom>

=back

The default option is C<Amazon Linux>. If you set this parameter to
C<Custom>, you must use the CreateInstance action's AmiId parameter to
specify the custom AMI that you want to use. For more information on
the standard operating systems, see Operating SystemsFor more
information on how to use custom AMIs with OpsWorks, see Using Custom
AMIs.










=head2 RootDeviceType => Str

  

The instance root device type. For more information, see Storage for
the Root Device.










=head2 SshKeyName => Str

  

The instance SSH key name.










=head2 B<REQUIRED> StackId => Str

  

The stack ID.










=head2 SubnetId => Str

  

The ID of the instance's subnet. If the stack is running in a VPC, you
can use this parameter to override the stack's default subnet ID value
and direct AWS OpsWorks to launch the instance in a different subnet.










=head2 VirtualizationType => Str

  

The instance's virtualization type, C<paravirtual> or C<hvm>.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateInstance in Paws::OpsWorks

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

