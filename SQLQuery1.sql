USE [RacsDB]
GO

/****** Object:  Table [dbo].[PricingAndCommission]    Script Date: 1/1/2022 7:26:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PricingAndCommission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ProductId] [bigint] NOT NULL,
	[PhysicalMarketing] [tinyint] NOT NULL,
	[DegitalMarketing] [tinyint] NOT NULL,
	[Development] [tinyint] NOT NULL,
	[Intrastructure] [tinyint] NOT NULL,
	[Maintanance] [tinyint] NOT NULL,
	[CompanyProfit] [tinyint] NOT NULL,
 CONSTRAINT [PK_PricingAndCommission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_PhysicalMarketing]  DEFAULT ((0)) FOR [PhysicalMarketing]
GO

ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_DegitalMarketing]  DEFAULT ((0)) FOR [DegitalMarketing]
GO

ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_Development]  DEFAULT ((0)) FOR [Development]
GO

ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_Intrastructure]  DEFAULT ((0)) FOR [Intrastructure]
GO

ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_Maintanance]  DEFAULT ((0)) FOR [Maintanance]
GO

ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_CompanyProfit]  DEFAULT ((0)) FOR [CompanyProfit]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'if 0 no need to calculate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PricingAndCommission', @level2type=N'COLUMN',@level2name=N'PhysicalMarketing'
GO


