package Paws::EMR::Cluster;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Application]');
  has AutoScalingRole => (is => 'ro', isa => 'Str');
  has AutoTerminate => (is => 'ro', isa => 'Bool');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has CustomAmiId => (is => 'ro', isa => 'Str');
  has EbsRootVolumeSize => (is => 'ro', isa => 'Int');
  has Ec2InstanceAttributes => (is => 'ro', isa => 'Paws::EMR::Ec2InstanceAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceCollectionType => (is => 'ro', isa => 'Str');
  has KerberosAttributes => (is => 'ro', isa => 'Paws::EMR::KerberosAttributes');
  has LogUri => (is => 'ro', isa => 'Str');
  has MasterPublicDnsName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NormalizedInstanceHours => (is => 'ro', isa => 'Int');
  has ReleaseLabel => (is => 'ro', isa => 'Str');
  has RepoUpgradeOnBoot => (is => 'ro', isa => 'Str');
  has RequestedAmiVersion => (is => 'ro', isa => 'Str');
  has RunningAmiVersion => (is => 'ro', isa => 'Str');
  has ScaleDownBehavior => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::EMR::ClusterStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has TerminationProtected => (is => 'ro', isa => 'Bool');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Cluster object:

  $service_obj->Method(Att1 => { Applications => $value, ..., VisibleToAllUsers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->Applications

=head1 DESCRIPTION

The detailed description of the cluster.

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::EMR::Application>]

  The applications installed on this cluster.


=head2 AutoScalingRole => Str

  An IAM role for automatic scaling policies. The default role is
C<EMR_AutoScaling_DefaultRole>. The IAM role provides permissions that
the automatic scaling feature requires to launch and terminate EC2
instances in an instance group.


=head2 AutoTerminate => Bool

  Specifies whether the cluster should terminate after completing all
steps.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  Applies only to Amazon EMR releases 4.x and later. The list of
Configurations supplied to the EMR cluster.


=head2 CustomAmiId => Str

  Available only in Amazon EMR version 5.7.0 and later. The ID of a
custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.


=head2 EbsRootVolumeSize => Int

  The size, in GiB, of the EBS root device volume of the Linux AMI that
is used for each EC2 instance. Available in Amazon EMR version 4.x and
later.


=head2 Ec2InstanceAttributes => L<Paws::EMR::Ec2InstanceAttributes>

  Provides information about the EC2 instances in a cluster grouped by
category. For example, key name, subnet ID, IAM instance profile, and
so on.


=head2 Id => Str

  The unique identifier for the cluster.


=head2 InstanceCollectionType => Str

  The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

The instance group configuration of the cluster. A value of
C<INSTANCE_GROUP> indicates a uniform instance group configuration. A
value of C<INSTANCE_FLEET> indicates an instance fleets configuration.


=head2 KerberosAttributes => L<Paws::EMR::KerberosAttributes>

  Attributes for Kerberos configuration when Kerberos authentication is
enabled using a security configuration. For more information see Use
Kerberos Authentication
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html)
in the I<EMR Management Guide>.


=head2 LogUri => Str

  The path to the Amazon S3 location where logs for this cluster are
stored.


=head2 MasterPublicDnsName => Str

  The DNS name of the master node. If the cluster is on a private subnet,
this is the private DNS name. On a public subnet, this is the public
DNS name.


=head2 Name => Str

  The name of the cluster.


=head2 NormalizedInstanceHours => Int

  An approximation of the cost of the cluster, represented in
m1.small/hours. This value is incremented one time for every hour an
m1.small instance runs. Larger instances are weighted more, so an EC2
instance that is roughly four times more expensive would result in the
normalized instance hours being incremented by four. This result is
only an approximation and does not reflect the actual billing rate.


=head2 ReleaseLabel => Str

  The Amazon EMR release label, which determines the version of
open-source application packages installed on the cluster. Release
labels are in the form C<emr-x.x.x>, where x.x.x is an Amazon EMR
release version, for example, C<emr-5.14.0>. For more information about
Amazon EMR release versions and included application versions and
features, see http://docs.aws.amazon.com/emr/latest/ReleaseGuide/
(http://docs.aws.amazon.com/emr/latest/ReleaseGuide/). The release
label applies only to Amazon EMR releases versions 4.x and later.
Earlier versions use C<AmiVersion>.


=head2 RepoUpgradeOnBoot => Str

  Applies only when C<CustomAmiID> is used. Specifies the type of updates
that are applied from the Amazon Linux AMI package repositories when an
instance boots using the AMI.


=head2 RequestedAmiVersion => Str

  The AMI version requested for this cluster.


=head2 RunningAmiVersion => Str

  The AMI version running on this cluster.


=head2 ScaleDownBehavior => Str

  The way that individual Amazon EC2 instances terminate when an
automatic scale-in activity occurs or an instance group is resized.
C<TERMINATE_AT_INSTANCE_HOUR> indicates that Amazon EMR terminates
nodes at the instance-hour boundary, regardless of when the request to
terminate the instance was submitted. This option is only available
with Amazon EMR 5.1.0 and later and is the default for clusters created
using that version. C<TERMINATE_AT_TASK_COMPLETION> indicates that
Amazon EMR blacklists and drains tasks from nodes before terminating
the Amazon EC2 instances, regardless of the instance-hour boundary.
With either behavior, Amazon EMR removes the least active nodes first
and blocks instance termination if it could lead to HDFS corruption.
C<TERMINATE_AT_TASK_COMPLETION> is available only in Amazon EMR version
4.1.0 and later, and is the default for versions of Amazon EMR earlier
than 5.1.0.


=head2 SecurityConfiguration => Str

  The name of the security configuration applied to the cluster.


=head2 ServiceRole => Str

  The IAM role that will be assumed by the Amazon EMR service to access
AWS resources on your behalf.


=head2 Status => L<Paws::EMR::ClusterStatus>

  The current status details about the cluster.


=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

  A list of tags associated with a cluster.


=head2 TerminationProtected => Bool

  Indicates whether Amazon EMR will lock the cluster to prevent the EC2
instances from being terminated by an API call or user intervention, or
in the event of a cluster error.


=head2 VisibleToAllUsers => Bool

  Indicates whether the cluster is visible to all IAM users of the AWS
account associated with the cluster. If this value is set to C<true>,
all IAM users of that AWS account can view and manage the cluster if
they have the proper policy permissions set. If this value is C<false>,
only the IAM user that created the cluster can view and manage it. This
value can be changed using the SetVisibleToAllUsers action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

