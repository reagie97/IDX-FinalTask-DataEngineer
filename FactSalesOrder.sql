USE [DWH_PROJECT]
GO

/****** Object:  Table [dbo].[FactSalesOrder]    Script Date: 31/05/2023 20:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSalesOrder](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CustomerName] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
 CONSTRAINT [PKSalesOrder] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FKCustomerOrder] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[DimCustomer] ([CustomerID])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FKCustomerOrder]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FKProductOrder] FOREIGN KEY([ProductID])
REFERENCES [dbo].[DimProduct] ([ProductID])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FKProductOrder]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FKStatusOrder] FOREIGN KEY([StatusID])
REFERENCES [dbo].[DimStatusOrder] ([StatusID])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FKStatusOrder]
GO


